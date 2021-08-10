import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';

import 'package:nipange/application/search/search_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/user/user.dart';
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
                // search row
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8, bottom: 18, top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // search field
                      Flexible(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: IconTheme(
                                data: Theme.of(context).iconTheme,
                                child: Icon(Icons.search)),
                            labelText: 'name or location',
                            contentPadding: EdgeInsets.all(8),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
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
                                  AppColor.kprimaryDarkColor)),
                        ),
                      )
                    ],
                  ),
                ),

                // searched listings
                FutureBuilder<List<Listing>>(
                    future: state.futureListings,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data!.length > 0
                            ? Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: snapshot.data!
                                      .map(
                                        (listing) => BlocProvider(
                                          key: UniqueKey(),
                                          create: (context) =>
                                              getIt<ItemBloc>(),
                                          child: ListingItem(
                                            listing: listing,
                                            routeName: '/search',
                                          ),
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
                                  'NO listings found',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              );
                      } else if (snapshot.hasError) {
                        return CustomErrorWidget(
                            error: snapshot.error.toString());
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return KCircularProgressIndicator();
                      }
                      return Container(
                        color: Colors.grey[200],
                        height: 300,
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
