import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/application/listing/listing_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';

import 'listing_item_widget.dart';

class ListingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListingBloc, ListingState>(builder: (context, state) {
        return FutureBuilder<List<Listing>>(
            future: state.listings,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                        child: Column(
                          children: [
                            Text(
                              'Listings',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontSize: 28),
                            ),
                            Text(
                              snapshot.data!.length.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontSize: 28),
                            ),
                          ],
                        ),
                      ),

                      elevation: 20,
                      centerTitle: true,
                      //backgroundColor: AppColor.btonColor,
                      toolbarHeight: 90,
                      expandedHeight: 110,
                      snap: true,
                      floating: true,
                      automaticallyImplyLeading: false,
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 28.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ListingItemWidget(
                            listing: snapshot.data![index],
                            index: index,
                          );
                        }, childCount: snapshot.data!.length),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  alignment: Alignment.center,
                  child: Text(snapshot.error.toString()),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BlocProvider(
              create: (context) => AddListingBloc(),
              child: AddListingPage(),
            );
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
