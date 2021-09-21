import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nipange/application/filter/filter_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat('#,##0');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: BlocListener<FilterBloc, FilterState>(
        listener: (context, state) {
          if (state.isSuccess) {
            Navigator.pushNamed(context, '/filter/results',
                arguments: state.listings);
          }
        },
        child: CustomScrollView(
          slivers: [
            // loading
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      if (state.isLoading) KCircularProgressIndicator(),
                      if (state.isError)
                        CustomErrorWidget(error: 'failed loading filters'),
                    ],
                  );
                },
              ),
            ),
            // title
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, top: 10, right: 8, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // filter txt
                    Text('Filters',
                        style: Theme.of(context).textTheme.headline6),
                    TextButton(
                      onPressed: () {
                        context.read<FilterBloc>().add(FilterEvent.clearAll());
                      },
                      child: Text('Clear All'),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                              Theme.of(context).textTheme.bodyText1),
                          foregroundColor: MaterialStateProperty.all(
                              Theme.of(context).accentColor)),
                    ),
                  ],
                ),
              ),
            ),

            // property type
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futureTypes,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // property type
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.apartment)),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Property Type',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  Spacer(flex: 1),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      state.type,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // values
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 18.0, bottom: 20),
                              child: Container(
                                height: 53,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: snapshot.data!
                                      .map(
                                        (value) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OutlinedButton(
                                            onPressed: () {
                                              context.read<FilterBloc>().add(
                                                  FilterEvent.typeChanged(
                                                      value));
                                            },
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                color: value == state.type
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor: value ==
                                                      state.type
                                                  ? MaterialStateProperty.all(
                                                      AppColor
                                                          .kprimaryDarkColor)
                                                  : null,
                                              side: MaterialStateProperty.all(
                                                BorderSide(
                                                    color: AppColor
                                                        .kprimaryDarkColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildBoxShadow();
                    },
                  );
                },
              ),
            ),

            // price range
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futurePriceRange,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            // price range
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 0, bottom: 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.price_change)),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        'Price range ( TZS )',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  //Spacer(),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                        "${currencyFormatter.format(double.parse(state.priceRange[0]))} - ${currencyFormatter.format(double.parse(state.priceRange[1]))}"),
                                  ),
                                ],
                              ),
                            ),
                            // values
                            RangeSlider(
                              values: RangeValues(
                                  double.parse(state.priceRange[0]),
                                  double.parse(state.priceRange[1])),
                              onChanged: (value) {
                                List<String> prices = [
                                  value.start.toStringAsFixed(0),
                                  value.end.toStringAsFixed(0)
                                ];
                                context
                                    .read<FilterBloc>()
                                    .add(FilterEvent.priceChanged(prices));
                              },
                              min: double.parse(snapshot.data![0]),
                              max: double.parse(snapshot.data![1]),
                              activeColor: Theme.of(context).primaryColorLight,
                              inactiveColor: Colors.grey[400],
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildRangeShadow(context);
                    },
                  );
                },
              ),
            ),

            // size
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futureSizeRange,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            // size range
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 2, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.square_foot)),
                                  Expanded(
                                      flex: 4,
                                      child: Text(
                                        'Size range ( sqf )',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                        "${currencyFormatter.format(double.parse(state.sizeRange[0]))} - ${currencyFormatter.format(double.parse(state.sizeRange[1]))}"),
                                  ),
                                ],
                              ),
                            ),
                            // values
                            RangeSlider(
                              values: RangeValues(
                                  double.parse(state.sizeRange[0]),
                                  double.parse(state.sizeRange[1])),
                              onChanged: (value) {
                                List<String> sizes = [
                                  value.start.toStringAsFixed(0),
                                  value.end.toStringAsFixed(0)
                                ];
                                context
                                    .read<FilterBloc>()
                                    .add(FilterEvent.sizeChanged(sizes));
                              },
                              min: double.parse(snapshot.data![0]),
                              max: double.parse(snapshot.data![1]),
                              activeColor: Theme.of(context).primaryColorLight,
                              inactiveColor: Colors.grey[400],
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildRangeShadow(context);
                    },
                  );
                },
              ),
            ),

            // bedroom
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futureBedroom,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            // bedroom
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 8, top: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.bed)),
                                  Expanded(
                                      flex: 4,
                                      child: Text(
                                        'Bedroom',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  Expanded(child: Text(state.bedroom)),
                                ],
                              ),
                            ),
                            // values
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 18.0, bottom: 20),
                              child: Container(
                                height: 53,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: snapshot.data!
                                      .map(
                                        (value) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OutlinedButton(
                                            onPressed: () {
                                              context.read<FilterBloc>().add(
                                                  FilterEvent.bedChanged(
                                                      value));
                                            },
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                color: value == state.bedroom
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor: value ==
                                                      state.bedroom
                                                  ? MaterialStateProperty.all(
                                                      AppColor
                                                          .kprimaryDarkColor)
                                                  : null,
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: AppColor
                                                          .kprimaryDarkColor)),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildBoxShadow();
                    },
                  );
                },
              ),
            ),

            // bathroom
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futureBathroom,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            // bathroom
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.shower)),
                                  Expanded(
                                      flex: 4,
                                      child: Text(
                                        'Bathroom',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  Expanded(child: Text(state.bathroom)),
                                ],
                              ),
                            ),
                            // values
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 18.0, bottom: 20),
                              child: Container(
                                height: 53,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: snapshot.data!
                                      .map(
                                        (value) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OutlinedButton(
                                            onPressed: () {
                                              context.read<FilterBloc>().add(
                                                  FilterEvent.bathChanged(
                                                      value));
                                            },
                                            child: Text(value,
                                                style: TextStyle(
                                                  color: value == state.bathroom
                                                      ? Colors.white
                                                      : Colors.black,
                                                )),
                                            style: ButtonStyle(
                                              backgroundColor: value ==
                                                      state.bathroom
                                                  ? MaterialStateProperty.all(
                                                      AppColor
                                                          .kprimaryDarkColor)
                                                  : null,
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: AppColor
                                                          .kprimaryDarkColor)),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildBoxShadow();
                    },
                  );
                },
              ),
            ),

            // terms
            SliverToBoxAdapter(
              child: BlocBuilder<FilterBloc, FilterState>(
                builder: (context, state) {
                  return FutureBuilder<List<String>>(
                    future: state.futureTerms,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            // terms
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.date_range)),
                                  Expanded(
                                      flex: 5,
                                      child: Text(
                                        'Terms ( months )',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      )),
                                  Expanded(child: Text(state.terms)),
                                ],
                              ),
                            ),
                            // values
                            Slider(
                              value: double.parse(state.terms),
                              onChanged: (e) {
                                context.read<FilterBloc>().add(
                                    FilterEvent.termsChanged(
                                        e.toStringAsFixed(0)));
                              },
                              min: double.parse(snapshot.data![0]),
                              max: double.parse(snapshot.data![1]),
                              divisions: 100,
                              activeColor: Theme.of(context).primaryColorLight,
                              inactiveColor: Colors.grey[400],
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      }
                      return _buildRangeShadow(context);
                    },
                  );
                },
              ),
            ),

            // amenities
            SliverToBoxAdapter(
              child: Container(
                height: 120,
                child: BlocBuilder<FilterBloc, FilterState>(
                  builder: (context, state) {
                    return FutureBuilder<List<String>>(
                      future: state.futureAmenities,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // amenities
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0,
                                      right: 18,
                                      bottom: 12,
                                      top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(child: Icon(Icons.apartment)),
                                      Expanded(
                                          flex: 3,
                                          child: Text(
                                            'Amenities',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          )),
                                      Expanded(
                                        child: Text(
                                            '${state.amenities.length} selected'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // values
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 5, bottom: 30, top: 0),
                                  height: 20,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: snapshot.data!.map((amenity) {
                                      List<String> amenities =
                                          List.from(state.amenities);
                                      return Row(
                                        children: [
                                          Checkbox(
                                            key: UniqueKey(),
                                            value: state.amenities
                                                .contains(amenity),
                                            onChanged: (value) {
                                              value!
                                                  ? amenities.add(amenity)
                                                  : amenities.remove(amenity);
                                              context.read<FilterBloc>().add(
                                                  FilterEvent.amenitiesChanged(
                                                      amenities));
                                            },
                                            activeColor: Theme.of(context)
                                                .primaryColorDark,
                                          ),
                                          Text(amenity.capitalize()),
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        }
                        return Container();
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 18, bottom: 10, right: 18, top: 2),
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            context.read<FilterBloc>().add(FilterEvent.send());
          },
          child: Text('filter'),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColorLight),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          ),
        ),
      ),
    );
  }
}

Widget _buildRangeShadow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              width: 30,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 150,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 150,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 15,
        color: Colors.grey[200],
        margin: const EdgeInsets.all(8),
      ),
    ]),
  );
}

Widget _buildBoxShadow() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              width: 30,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 150,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 150,
              height: 20,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              width: 100,
              height: 40,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 150,
              height: 40,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
          Expanded(
            child: Container(
              width: 120,
              height: 40,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    ]),
  );
}
