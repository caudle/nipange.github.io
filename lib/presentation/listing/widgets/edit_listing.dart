/* author: caudle
   @2021  */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/application/premium/premium_bloc.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';
import 'package:nipange/presentation/premium/widgets/premium_widget.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/widgets/videoWiget.dart';
import 'package:video_player/video_player.dart';
import 'package:nipange/utils/extensions.dart';
import '../../../injector.dart';

class EditListingPage extends StatefulWidget {
  final Listing listing;
  const EditListingPage({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  _EditListingPageState createState() => _EditListingPageState();
}

class _EditListingPageState extends State<EditListingPage> {
  int _currentIndex = 0;
  final _currency = NumberFormat('#,##0.00');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BlocProvider(
                  lazy: false,
                  create: (context) => AddListingBloc()
                    ..add(AddListingEvent.add(widget.listing)),
                  child: AddListingPage(),
                );
              }));
            },
            child: Text('edit'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.black38;
                  }
                  return Colors.white;
                }),
                elevation: MaterialStateProperty.all(0)),
          ),
        ],
      ),
      body: ListView(
        children: [
          // type
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 20),
            child: Text(
              widget.listing.propertyType!.capitalize(),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),

          // media

          // video
          Container(
            margin: EdgeInsets.only(left: 18, top: 20, bottom: 18),
            child: Text(
              'Videos',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          Stack(
            children: [
              //player
              ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width,
                    maxWidth: MediaQuery.of(context).size.width,
                    minHeight: 230,
                    maxHeight: 230),
                child: PageView.builder(
                    itemCount: widget.listing.videos!.length,
                    itemBuilder: (context, index) {
                      return VideoWidget(
                        key: UniqueKey(),
                        videoPlayerController: VideoPlayerController.network(
                            '$api/${widget.listing.videos![index]}'),
                        looping: true,
                        autoplay: false,
                      );
                    },
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
              ),

              // dots
              // dots
              if (widget.listing.videos!.length > 1)
                Positioned(
                  bottom: 10,
                  left: 180 - (widget.listing.videos!.length * 5),
                  child: Row(
                    children: List.generate(
                        widget.listing.videos!.length,
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
                                      : Theme.of(context).primaryColorDark,
                                ),
                              ),
                            )),
                  ),
                ),
            ],
          ),

          // property details
          Container(
            margin: EdgeInsets.only(left: 18, top: 30, bottom: 12),
            child: Text(
              'Listing details',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          // building
          if (widget.listing.building!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Building name',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Expanded(
                    child: Text(widget.listing.building!),
                  ),
                ],
              ),
            ),

          // name
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'name',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Expanded(
                  child: Text(widget.listing.name!),
                ),
              ],
            ),
          ),

          // bedroom
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'bedroom',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Expanded(
                  child: Text(widget.listing.bedroom.toString()),
                ),
              ],
            ),
          ),

          // bathroom
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'bathroom',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(widget.listing.bathroom.toString()),
                  ),
                ),
              ],
            ),
          ),

          if (widget.listing.size != null)
            // size
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 18),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'size',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Expanded(
                    child:
                        Text('${widget.listing.size!.toStringAsFixed(0)} sqf'),
                  ),
                ],
              ),
            ),
          Divider(),
          // location
          Container(
            margin: EdgeInsets.only(left: 18, top: 18, bottom: 8),
            child: Text(
              'Location',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          // country
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'country',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(widget.listing.location!['country']),
                  padding: EdgeInsets.only(bottom: 8),
                ),
              ),
            ],
          ),
          // regn
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'region',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(widget.listing.location!['region']),
                  padding: EdgeInsets.only(bottom: 8),
                ),
              ),
            ],
          ),

          // district
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'district',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(widget.listing.location!['district']),
                  padding: EdgeInsets.only(bottom: 8),
                ),
              ),
            ],
          ),

          // ward
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'ward',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(widget.listing.location!['ward']),
                  padding: EdgeInsets.only(bottom: 8),
                ),
              ),
            ],
          ),

          // street
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'street',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(widget.listing.location!['street']),
                  ),
                ),
              ],
            ),
          ),
          Divider(),

          // amenities
          Container(
            margin: EdgeInsets.only(left: 18, top: 18, bottom: 8),
            child: Text(
              'Amenities',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 18),
            child: Wrap(
              children: widget.listing.amenities!
                  .map((amenity) => Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 8.0),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                            Text(amenity)
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          Divider(),

          // description
          Container(
            margin: EdgeInsets.only(left: 18, top: 18, bottom: 8),
            child: Text(
              'Description',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 18.0, bottom: 18),
            child: Text(
              widget.listing.description!.capitalize(),
            ),
          ),
          Divider(),
          // pricing
          Container(
            margin: EdgeInsets.only(left: 18, top: 18, bottom: 12),
            child: Text(
              'Pricing',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          // terms
          if (widget.listing.terms!['duration'] != null)
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'terms',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Expanded(
                    child: Text(
                        '${widget.listing.terms!['duration'].toString()} ${widget.listing.terms!['per'].toString()} (s)'),
                  ),
                ],
              ),
            ),

          // dalali fee
          if (widget.listing.fee != null)
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'dalali fee',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Expanded(
                    child: Text('${_currency.format(widget.listing.fee!)} TZS'),
                  ),
                ],
              ),
            ),

          // price
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'price',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Expanded(
                  child: Text('${_currency.format(widget.listing.price!)} TZS'),
                ),
              ],
            ),
          ),
          Divider(),
          // plan
          Container(
            margin: EdgeInsets.only(left: 18, top: 18, bottom: 8),
            child: Text(
              'Your Plan',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          if (widget.listing.package!.name == 'free')
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'free',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 50, right: 50),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BlocProvider(
                              create: (context) => getIt<PremiumBloc>()
                                ..add(PremiumEvent.started()),
                              child: PremiumWidget(
                                listingId: widget.listing.id!,
                                hostId: widget.listing.hostId!,
                              ),
                            );
                          }));
                        },
                        child: Text('upgrade'),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColorDark),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            minimumSize:
                                MaterialStateProperty.all(Size(50, 40))),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // premium
          if (widget.listing.package!.name != 'free')
            // name
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'name',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text('${widget.listing.package!.name}'),
                  ),
                ],
              ),
            ),
          if (widget.listing.package!.name != 'free')
            // days left
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'days remaining',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                        '${daysLeft(widget.listing.package!.createdAt, widget.listing.package!.expireAt!)}'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

int daysLeft(DateTime created, DateTime expire) =>
    expire.difference(created).inDays;
