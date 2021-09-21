import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/application/listing/listing_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';
import 'package:nipange/widgets/error.dart';

import 'listing_item_widget.dart';

class ListingWidget extends StatelessWidget {
  final String userId;
  ListingWidget({
    Key? key,
    required this.userId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ListingBloc, ListingState>(listener: (context, state) {
        if (state.isdeleted) {
          // show snackbar

          final snackBar = SnackBar(
            content: Text(
              state.deletedmessage!,
              textAlign: TextAlign.center,
            ),
            duration: Duration(seconds: 10),
            backgroundColor: Theme.of(context).primaryColorLight,
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }, builder: (context, state) {
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
                          .copyWith(fontSize: 28, color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: FutureBuilder<List<Listing>>(
                          future: state.listings,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data!.length.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontSize: 25, color: Colors.white),
                              );
                            } else
                              return Container();
                          }),
                    ),
                  ],
                ),
              ),
              elevation: 6,
              centerTitle: true,
              toolbarHeight: 108,
              expandedHeight: 110,
              snap: true,
              floating: true,
              automaticallyImplyLeading: false,
            ),
            SliverFillRemaining(
              child: FutureBuilder<List<Listing>>(
                  future: state.listings,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Listing> listings = snapshot.data!;
                      return listings.length > 0
                          ? ListView.builder(
                              itemBuilder: (context, index) {
                                return ListingItemWidget(
                                  listing: listings[index],
                                  userId: userId,
                                );
                              },
                              itemCount: listings.length,
                            )
                          : Center(
                              child:
                                  Text('Press the add button to add listings'));
                    } else if (snapshot.hasError)
                      return CustomErrorWidget(
                          error: snapshot.error.toString());
                    else
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 18, right: 18),
                        child: ListView(
                          children: _buildShadow(),
                        ),
                      );
                  }),
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true)
              .push(MaterialPageRoute(builder: (context) {
            return BlocProvider(
              create: (context) => AddListingBloc(),
              child: AddListingPage(),
            );
          })).then((_) {
            // reload listings
            context.read<ListingBloc>()..add(ListingEvent.fetching(userId));
          });
        },
        child: Icon(Icons.add),
        backgroundColor: AppColor.kprimaryLightColor,
      ),
    );
  }
}

List<Widget> _buildShadow() {
  return List.generate(
      2,
      (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    color: Colors.grey[200],
                    width: 100,
                    height: 20,
                  ),
                ),
                // img
                Flexible(
                  child: Container(
                    color: Colors.grey[200],
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                // texts
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    color: Colors.grey[200],
                    width: 120,
                    height: 20,
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    color: Colors.grey[200],
                    width: 60,
                    height: 20,
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    color: Colors.grey[200],
                    width: 130,
                    height: 20,
                  ),
                ),
              ],
            ),
          ));
}
