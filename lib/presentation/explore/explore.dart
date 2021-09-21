import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/detail/detail_bloc.dart';
import 'package:nipange/application/explore/explore_bloc.dart';
import 'package:nipange/application/filter/filter_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';
import 'package:nipange/application/search/search_bloc.dart';
import 'package:nipange/domain/category/category.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/detail/detail_page.dart';
import 'package:nipange/presentation/explore/widgets/filter.dart';
import 'package:nipange/presentation/explore/widgets/listing_item.dart';
import 'package:nipange/presentation/explore/widgets/search.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/error.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => _onRefresh(context),
        color: Colors.white,
        backgroundColor: Theme.of(context).primaryColorLight,
        child: CustomScrollView(
          slivers: [
            // app bar
            _buildAppbar(context),

            // pick home txt
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
                child: Text(
                  'Pick a home category',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // cats
            _buildCategories(context),

            // listings
            _buildListItems(context),
          ],
        ),
      ),
    );
  }
}

Widget _buildAppbar(BuildContext context) {
  return SliverAppBar(
    title: Container(
      height: 50,
      margin: EdgeInsets.only(left: 8, top: 30, bottom: 10, right: 8),
      child: Material(
        // search row
        child: Row(
          children: [
            // search row

            Expanded(
              flex: 3,
              child: Icon(
                Icons.search,
              ),
            ),

            //  search txt
            Expanded(
              flex: 7,
              child: GestureDetector(
                child: Text(
                  'tap here to search',
                  style: Theme.of(context).textTheme.caption,
                ),
                onTap: () {
                  // navgt to search route
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(
                          settings: RouteSettings(name: '/search'),
                          builder: (context) {
                            return BlocProvider(
                              create: (context) => getIt<SearchBloc>(),
                              child: SearchPage(),
                            );
                          }));
                },
              ),
            ),

            // filter
            Flexible(
              flex: 2,
              child: Text(
                'Filter',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            Expanded(
              flex: 2,
              child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    // navgt to filter route
                    Navigator.of(context, rootNavigator: true)
                        .push(MaterialPageRoute(
                            settings: RouteSettings(name: '/filter'),
                            builder: (context) {
                              return BlocProvider(
                                create: (context) => getIt<FilterBloc>()
                                  ..add(FilterEvent.started()),
                                child: FilterPage(),
                              );
                            }));
                  },
                  icon: Icon(Icons.menu)),
            )
          ],
        ),
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    floating: true,
    snap: true,
    pinned: true,
    elevation: 0,
    toolbarHeight: 100,
    expandedHeight: 120,
    iconTheme: Theme.of(context).iconTheme,
  );
}

Widget _buildCategories(BuildContext context) {
  return BlocBuilder<ExploreBloc, ExploreState>(
    builder: (context, state) {
      return SliverToBoxAdapter(
        child: Container(
          height: 54,
          child: FutureBuilder<List<Category>>(
              future: state.categories,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            padding: EdgeInsets.only(
                                right: 18.0, left: index == 0 ? 18 : 0),
                            child:
                                _buildCatItem(context, snapshot.data![index]));
                      });
                } else if (snapshot.hasError) {
                  return CustomErrorWidget(error: snapshot.error!.toString());
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: 130,
                        height: 49,
                        color: Colors.grey[200],
                        margin: EdgeInsets.only(left: 18),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 130,
                        height: 49,
                        color: Colors.grey[200],
                        margin: EdgeInsets.only(left: 18),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 130,
                        height: 49,
                        color: Colors.grey[200],
                        margin: EdgeInsets.only(left: 18),
                      ),
                    ),
                  ],
                );
              }),
        ),
      );
    },
  );
}

Widget _buildListItems(BuildContext context) {
  return BlocBuilder<ExploreBloc, ExploreState>(
    builder: (context, state) {
      return SliverPadding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 30),
          sliver: SliverToBoxAdapter(
            child: FutureBuilder<List<Listing>>(
                key: UniqueKey(),
                future: state.listings,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data!.length);
                    return snapshot.data!.length > 0
                        ? Column(
                            children: List.generate(
                                snapshot.data!.length,
                                (index) => GestureDetector(
                                      child: BlocProvider(
                                        create: (context) => getIt<ItemBloc>(),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 30.0),
                                          child: ListingItem(
                                            listing: snapshot.data![index],
                                            routeName: '/',
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        // nav to detailspage
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(MaterialPageRoute(
                                                settings: RouteSettings(
                                                    name: '/details'),
                                                builder: (context) {
                                                  return BlocProvider(
                                                    create: (context) => getIt<
                                                        DetailBloc>()
                                                      ..add(DetailEvent.started(
                                                        userId: snapshot
                                                            .data![index]
                                                            .hostId!,
                                                        listingId: snapshot
                                                            .data![index].id!,
                                                        type: snapshot
                                                            .data![index]
                                                            .propertyType!,
                                                        district: snapshot
                                                                .data![index]
                                                                .location![
                                                            'district'],
                                                      )),
                                                    child: BlocProvider(
                                                      lazy: false,
                                                      create: (context) =>
                                                          getIt<ItemBloc>(),
                                                      child: DetailsPage(
                                                          listing: snapshot
                                                              .data![index]),
                                                    ),
                                                  );
                                                }));
                                      },
                                    )).toList(),
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            //color: Colors.grey[200],
                            child: Center(
                              child: Text(
                                '${state.property.capitalize()}s',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          );
                  } else if (snapshot.hasError) {
                    return CustomErrorWidget(error: snapshot.error!.toString());
                  }
                  return _buildListingShadow(context);
                }),
          ));
    },
  );
}

Future _onRefresh(BuildContext context) async {
  final bloc = context.read<ExploreBloc>();
  bloc.add(ExploreEvent.fetched(bloc.state.property));
}

Widget _buildListingShadow(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 150,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 100,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 100,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 150,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
    ],
  );
}

Widget _buildCatItem(BuildContext context, Category category) {
  final bloc = context.read<ExploreBloc>();
  return ElevatedButton(
    onPressed: () {
      bloc.add(ExploreEvent.fetched(category.name));
    },
    child: Text(
      category.name.capitalize(),
    ),
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all(Size(130, 43)),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      backgroundColor: MaterialStateProperty.all(
          category.name == bloc.state.property
              ? Theme.of(context).accentColor
              : Colors.grey),
      elevation: MaterialStateProperty.all(
          category.name == bloc.state.property ? 6 : 0),
    ),
  );
}
