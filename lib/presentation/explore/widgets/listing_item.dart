import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';
import 'package:nipange/core/theme.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/utils/common.dart';

import 'package:nipange/utils/extensions.dart';
import 'package:intl/intl.dart';

class ListingItem extends StatelessWidget {
  final String routeName;
  final Listing listing;

  ListingItem({
    Key? key,
    required this.listing,
    required this.routeName,
  }) : super(key: key);

  final style = GoogleFonts.montserrat();
  final currencyFormatter = NumberFormat('#,##0.00');

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<ItemBloc>().state.currentIndex;
    final user = context.watch<AuthBloc>().state.user;
    //final authBloc = context.read<AuthBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // img
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 250,
                child: PageView.builder(
                  itemCount: listing.photos!.length,
                  itemBuilder: (context, position) {
                    return CachedNetworkImage(
                      imageUrl: '$api/${listing.photos![position]}',
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      fit: BoxFit.fill,
                    );
                  },
                  onPageChanged: (index) {
                    context.read<ItemBloc>().add(ItemEvent.pageChanged(index));
                  },
                ),
              ),
            ),

            // dots
            if (listing.photos!.length > 1)
              Positioned(
                bottom: 10,
                left: (MediaQuery.of(context).size.width / 2) -
                    (38 + (listing.photos!.length - 5)),
                child: Row(
                  children: List.generate(
                      listing.photos!.length,
                      (index) => Container(
                            width: index == currentIndex ? 8 : 5,
                            height: index == currentIndex ? 8 : 5,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == currentIndex
                                  ? Theme.of(context).primaryColorLight
                                  : Colors.white,
                              border: Border.all(
                                width: 0,
                                color: index == currentIndex
                                    ? Theme.of(context).primaryColorLight
                                    : Colors.white,
                              ),
                            ),
                          )),
                ),
              ),
            // fav icon
            Positioned(
              right: 0,
              child: BlocBuilder<ItemBloc, ItemState>(
                builder: (context, state) {
                  return StreamBuilder<dynamic>(
                      stream: favStream(state, user),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          //print(jsonDecode(snapshot.data));
                          bool exists = jsonDecode(snapshot.data);
                          return IconButton(
                            onPressed: user != null
                                ? () {
                                    exists
                                        ? context.read<ItemBloc>().add(
                                            ItemEvent.deleteListing(
                                                listingId: listing.id!,
                                                userId: user.id))
                                        : context.read<ItemBloc>().add(
                                            ItemEvent.addListing(
                                                listingId: listing.id!,
                                                userId: user.id));
                                  }
                                : () {
                                    // show alert
                                    showAlertDialog(
                                        context: context,
                                        route: routeName,
                                        bloc: context.read<AuthBloc>());
                                  },
                            icon: Icon(
                              exists
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline,
                              color: exists
                                  ? AppColor.ksecondaryColor
                                  : Colors.white,
                            ),
                          );
                        }
                        return Container();
                      });
                },
              ),
            ),

            // premium badge
            if (listing.package!.key == 1)
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 3, top: 5),
                  child: Row(children: [
                    Expanded(child: Icon(Icons.star, color: Colors.white)),
                    Flexible(
                      flex: 2,
                      child: Text('premium',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white)),
                    ),
                  ]),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
          ],
        ),

        // star
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 5),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: AppColor.ksecondaryColor,
              ),
              BlocBuilder<ItemBloc, ItemState>(
                builder: (context, state) {
                  return StreamBuilder<dynamic>(
                      stream: reviewStream(state),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // convert json data to reviews
                          List<Review> reviews = <Review>[];
                          List bodyList = jsonDecode(snapshot.data);
                          // rate
                          reviews.addAll(bodyList.map((review) =>
                              Review.fromJson(json.encode(review))));
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "${getRating(reviews).toStringAsFixed(1)} (${reviews.length})",
                              style: style,
                            ),
                          );
                        }

                        return Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 30,
                          height: 8,
                          color: Colors.grey[200],
                        );
                      });
                },
              )
            ],
          ),
        ),

        // type
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              Text(
                "${listing.propertyType!.capitalize()}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 4,
                height: 4,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
              Text("${listing.location!['region'].toString().capitalize()}",
                  style: style),
            ],
          ),
        ),

        // building
        if (listing.propertyType == 'apartment')
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              listing.building!.capitalize(),
              style: style,
            ),
          ),

        // name
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(listing.name!.capitalize(), style: style),
        ),

        // price
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: RichText(
            text: TextSpan(
                text: "TZS ${currencyFormatter.format(listing.price!)}",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                children: [
                  TextSpan(
                    text: " / ${listing.terms!['per']}",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                  )
                ]),
          ),
        )
      ],
    );
  }

  Stream favStream(ItemState state, User? user) {
    state.existsChannel.sink.add(jsonEncode({
      "listingId": listing.id,
      "userId": user == null ? "" : user.id,
    }));
    return state.existsChannel.stream;
  }

  Stream reviewStream(ItemState state) {
    state.reviewChannel.sink.add(jsonEncode({
      'id': listing.id,
    }));
    return state.reviewChannel.stream;
  }

  showAlertDialog(
      {required BuildContext context,
      required String route,
      required AuthBloc bloc}) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Cancel",
        style: TextStyle(color: Theme.of(context).primaryColorDark),
      ),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget signUpButton = ElevatedButton(
      child: Text("Sign up"),
      onPressed: () {
        // navgate to signup form
        Navigator.of(context, rootNavigator: true).pop();
        Navigator.of(context, rootNavigator: true)
            .pushNamed('signup', arguments: route)
            .then((_) {
          // fetch new user
          bloc.add(AuthEvent.started());
        });
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColorDark),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Log in",
      ),
      content: Text(
          "sign up or log in to save places that you like and visit them later."),
      actions: [
        cancelButton,
        SizedBox(
          width: 20,
        ),
        signUpButton,
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
