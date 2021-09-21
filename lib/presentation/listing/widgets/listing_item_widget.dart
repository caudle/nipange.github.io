import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/application/listing/listing_bloc.dart';
import 'package:nipange/application/premium/premium_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';
import 'package:nipange/presentation/listing/widgets/edit_listing.dart';
import 'package:nipange/presentation/premium/widgets/premium_widget.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/utils/extensions.dart';

import 'package:nipange/domain/listing/listing.dart';

import '../../../injector.dart';

class ListingItemWidget extends StatefulWidget {
  final String userId;
  final Listing listing;
  const ListingItemWidget({
    Key? key,
    required this.userId,
    required this.listing,
  }) : super(key: key);

  @override
  _ListingItemWidgetState createState() => _ListingItemWidgetState();
}

class _ListingItemWidgetState extends State<ListingItemWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return widget.listing.complete! >= 6
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
            child: _buildComplete(context, widget.listing),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
            child: _buildInprogress(context, widget.listing),
          );
  }

  Widget _buildComplete(BuildContext context, Listing listing) {
    return Container(
      height: 350,
      child: Material(
        elevation: 0,
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 0, bottom: 8),
                child: Text(
                  listing.name!.capitalize(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  margin: EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: PageView.builder(
                            itemCount: listing.photos!.length,
                            itemBuilder: (context, index) {
                              return Image.network(
                                '$api/${listing.photos![index]}',
                                fit: BoxFit.fill,
                              );
                            },
                            onPageChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // dots
                      if (listing.photos!.length > 1)
                        Positioned(
                          bottom: 10,
                          left: 180 - (listing.photos!.length * 5),
                          // right: 180,
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                widget.listing.photos!.length,
                                (index) => Container(
                                      width: index == _currentIndex ? 8 : 5,
                                      height: index == _currentIndex ? 8 : 5,
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: index == _currentIndex
                                            ? Theme.of(context).primaryColorDark
                                            : Colors.white,
                                        border: Border.all(
                                          width: 0,
                                          color: index == _currentIndex
                                              ? Colors.white
                                              : Theme.of(context)
                                                  .primaryColorDark,
                                        ),
                                      ),
                                    )),
                          ),
                        ),

                      // delete btn
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              // show dialog
                              showAlertDialog(
                                  context: context,
                                  userId: widget.userId,
                                  listingid: listing.id!);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      ),

                      //upgrade btn or premium label
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: TextButton(
                            onPressed: listing.package!.name == 'free'
                                ? () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<PremiumBloc>()
                                              ..add(PremiumEvent.started()),
                                        child: PremiumWidget(
                                          listingId: listing.id!,
                                          hostId: listing.hostId!,
                                        ),
                                      );
                                    }));
                                  }
                                : null,
                            child: Text(listing.package!.name == 'free'
                                ? 'upgrade'
                                : 'premium'),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColorDark),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "${listing.propertyType!.capitalize()} . ${listing.location!['region'].toString().capitalize()}",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              if (listing.building!.isNotEmpty)
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "${listing.building!.capitalize()}",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "${listing.location!['district'].toString().capitalize()}",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Created on: ${listing.createdAt!.toReadable()}",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.of(context, rootNavigator: true)
                .push(MaterialPageRoute(builder: (context) {
              return EditListingPage(listing: listing);
            }));
          },
        ),
      ),
    );
  }

  Widget _buildInprogress(BuildContext context, Listing listing) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            'In progress',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          height: 165,
          child: Material(
            elevation: 3,
            child: InkWell(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // icon
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          child: Icon(Icons.apartment),
                          color: Colors.grey.shade300,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          margin: EdgeInsets.all(12),
                        ),
                      ),
                      Expanded(
                          flex: 6,
                          child: Container(
                            child: Text(listing.location != null
                                ? '${listing.name!} in ${listing.location!['region']}'
                                : '${listing.name!}'),
                            margin: EdgeInsets.only(left: 25, top: 22),
                          )),

                      // delete icon
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: IconButton(
                              onPressed: () {
                                // show dialog
                                showAlertDialog(
                                    context: context,
                                    userId: widget.userId,
                                    listingid: listing.id!);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      ),
                    ],
                  ),

                  // finish txt

                  Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 8, left: 12),
                    child: Text(
                      'Finish your listing',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 8),
                    child: Text(
                        'You are ${((listing.complete! / 6) * 100).toStringAsFixed(1)}% there'),
                  ),

                  // progress
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 5,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          width: listing.complete! / 6 * 320,
                          height: 5,
                          color: AppColor.kprimaryDarkColor,
                        )
                      ],
                    ),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    lazy: false,
                    create: (context) =>
                        AddListingBloc()..add(AddListingEvent.add(listing)),
                    child: AddListingPage(),
                  );
                }));
              },
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

showAlertDialog(
    {required BuildContext context,
    required String userId,
    required String listingid}) {
  // set up the button
  Widget cancelButton = TextButton(
    child: Text(
      "Cancel",
    ),
    onPressed: () {
      Navigator.pop(context); // dismiss alert dialog
    },
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor:
          MaterialStateProperty.all(Theme.of(context).primaryColorDark),
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
  );

  Widget deleteButton = TextButton(
    child: Text("Delete",
        style: TextStyle(
          color: Theme.of(context).primaryColorDark,
        )),
    onPressed: () {
      // delete event
      context.read<ListingBloc>()
        ..add(ListingEvent.deleted(listingId: listingid, userId: userId));

      Navigator.pop(context); // dismiss alert dialog
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Delete",
    ),
    content: Text(
      "This listing will be deleted permanently.",
      textAlign: TextAlign.left,
    ),
    actions: [
      cancelButton,
      deleteButton,
    ],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );

  // show the dialog
  showDialog(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
