import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';
import 'package:nipange/presentation/listing/widgets/edit_listing.dart';
import 'package:nipange/utils/extensions.dart';

import 'package:nipange/domain/listing/listing.dart';

class ListingItemWidget extends StatelessWidget {
  final int index;
  final Listing listing;
  const ListingItemWidget({
    Key? key,
    required this.index,
    required this.listing,
  }) : super(key: key);
  final String api = "http://172.20.10.11:5000";
  @override
  Widget build(BuildContext context) {
    return listing.complete! >= 6
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
            child: _buildComplete(context, listing),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
            child: _buildInprogress(context, listing),
          );
  }

  Widget _buildComplete(BuildContext context, Listing listing) {
    return Container(
      height: 280,
      child: Material(
        elevation: 6,
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    '$api/${listing.photos![0]}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, top: 8, bottom: 5),
                  child: Text(listing.location != null
                      ? "${listing.propertyType!.capitalize()} . ${listing.location!['region'].toString().capitalize()}"
                      : "${listing.propertyType!.capitalize()}"),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 5),
                  child: Text(listing.location != null
                      ? "${listing.location!['district'].toString().capitalize()}"
                      : "${listing.propertyType!.capitalize()}"),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 5),
                  child: Text(listing.location != null
                      ? "Created on: ${listing.createdAt!.toReadable()}"
                      : "${listing.propertyType!.capitalize()}"),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
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
          child: Text('In progress'),
        ),
        Container(
          height: 140,
          child: Material(
            elevation: 3,
            child: InkWell(
              child: Column(
                children: [
                  // icon home
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          height: 40,
                          child: Icon(Icons.home),
                          color: Colors.grey.shade300,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          margin: EdgeInsets.all(12),
                        ),
                      ),
                      Flexible(
                          child: Container(
                        child: Text(listing.location != null
                            ? '${listing.name!} in ${listing.location!['region']}'
                            : '${listing.name!}'),
                        margin: EdgeInsets.only(left: 25, top: 22),
                      ))
                    ],
                  ),

                  // finish txt
                  Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 2, left: 12),
                    child: Text('Finish your listing'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
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
                        )
                      ],
                    ),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    lazy: false,
                    create: (context) =>
                        AddListingBloc()..add(AddListingEvent.add(listing)),
                    child: AddListingPage(),
                  );
                }));
              },
            ),
          ),
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
