import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/detail/detail_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';

import 'package:nipange/application/search/search_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/presentation/detail/detail_page.dart';
import 'package:nipange/presentation/explore/widgets/listing_item.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

import '../../../injector.dart';

class SearchPage extends StatelessWidget {
  final User? user;
  const SearchPage({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return ListView(
              children: [
                // close icon
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  alignment: Alignment.topLeft,
                ),
                // search row

                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 2, bottom: 8, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // search field
                      Flexible(
                        flex: 3,
                        child: Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: IconTheme(
                                  data: Theme.of(context).iconTheme,
                                  child: Icon(Icons.search)),
                              hintText: 'enter name or location',
                              contentPadding: EdgeInsets.all(8),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(),
                            ),
                            autofocus: true,
                            onChanged: (value) {
                              context
                                  .read<SearchBloc>()
                                  .add(SearchEvent.changed(value));
                            },
                          ),
                        ),
                      ),

                      // search btn
                      Flexible(
                        child: ElevatedButton(
                          onPressed: state.search.isNotEmpty
                              ? () {
                                  context
                                      .read<SearchBloc>()
                                      .add(SearchEvent.search());
                                }
                              : null,
                          child: Text('search'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColor.kprimaryLightColor),
                              minimumSize:
                                  MaterialStateProperty.all(Size(68, 43)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),

                // searched listings
                FutureBuilder<List<Listing>>(
                    key: UniqueKey(),
                    future: state.futureListings,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data!.length > 0
                            ? Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: snapshot.data!
                                      .map(
                                        (listing) => GestureDetector(
                                          child: BlocProvider(
                                            key: UniqueKey(),
                                            create: (context) =>
                                                getIt<ItemBloc>(),
                                            child: ListingItem(
                                              listing: listing,
                                              routeName: '/search',
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    settings: RouteSettings(
                                                        name: '/details'),
                                                    builder: (context) {
                                                      return BlocProvider(
                                                        create: (context) =>
                                                            getIt<DetailBloc>()
                                                              ..add(DetailEvent
                                                                  .started(
                                                                userId: listing
                                                                    .hostId!,
                                                                listingId:
                                                                    listing.id!,
                                                                type: listing
                                                                    .propertyType!,
                                                                district: listing
                                                                        .location![
                                                                    'district'],
                                                              )),
                                                        child: BlocProvider(
                                                          create: (context) =>
                                                              getIt<ItemBloc>(),
                                                          child: DetailsPage(
                                                              listing: listing),
                                                        ),
                                                      );
                                                    }));
                                          },
                                        ),
                                      )
                                      .toList(),
                                ),
                              )
                            : Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height / 3,
                                    left: 18,
                                    right: 18),
                                child: Text(
                                  'Oops no listings found, try different words or use the filter option in home page',
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlign: TextAlign.center,
                                ),
                              );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 3,
                              left: 18,
                              right: 18,
                            ),
                            child: KCircularProgressIndicator());
                      }
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 3,
                          left: 18,
                          right: 18,
                        ),
                        child: Text(
                          'Search',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      );
                    }),
              ],
            );
          },
        ),
      ),
    );
  }
}
