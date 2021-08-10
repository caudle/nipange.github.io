import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/core/theme.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/listing/widgets/add_listing.dart';
import 'package:nipange/widgets/videoWiget.dart';
import 'package:video_player/video_player.dart';
import 'package:nipange/utils/extensions.dart';

class EditListingPage extends StatelessWidget {
  static String api = "http://172.20.10.11:5000";
  final Listing listing;
  const EditListingPage({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //close icon && edit
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black38,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 10),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BlocProvider(
                          lazy: false,
                          create: (context) => AddListingBloc()
                            ..add(AddListingEvent.add(listing)),
                          child: AddListingPage(),
                        );
                      }));
                    },
                    child: Text('edit')),
              )
            ],
          ),

          // type
          Container(
            child: Text(listing.propertyType!),
          ),

          // media
          Container(
            child: Text('Media'),
          ),

          // photos
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 250,
                  child: PageView.builder(
                    itemCount: listing.photos!.length,
                    itemBuilder: (context, position) {
                      return Image.network(
                        '$api/${listing.photos![position]}',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.fill,
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 180 - (listing.photos!.length * 5),
                // right: 180,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      listing.photos!.length,
                      (index) => Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          )),
                ),
              ),
            ],
          ),

          // video

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
                    itemCount: listing.videos!.length,
                    itemBuilder: (context, index) {
                      return VideoWidget(
                        key: UniqueKey(),
                        videoPlayerController: VideoPlayerController.network(
                            '$api/${listing.videos![index]}'),
                        looping: true,
                        autoplay: false,
                      );
                    }),
              ),

              // dots
              Positioned(
                bottom: 10,
                left: 180 - (listing.videos!.length * 5),
                child: Row(
                  children: List.generate(
                      listing.videos!.length,
                      (index) => Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          )),
                ),
              ),
            ],
          ),

          // property type
          Container(
            child: Text('Property details'),
          ),

          // building
          if (listing.building != null)
            Container(
              child: Text(listing.building!),
            ),

          // name
          Container(
            child: Text(listing.name!),
          ),

          // bedroom
          Container(
            child: Text(listing.bedroom.toString()),
          ),

          // bathroom
          Container(
            child: Text(listing.bathroom.toString()),
          ),

          // location
          Container(
            child: Text('Location'),
          ),

          Row(
            children: [
              Container(
                child: Text('Country'),
              ),
              Container(
                child: Text(listing.location!['country']),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                child: Text('Region'),
              ),
              Container(
                child: Text(listing.location!['region']),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                child: Text('District'),
              ),
              Container(
                child: Text(listing.location!['district']),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                child: Text('Street'),
              ),
              Container(
                child: Text(listing.location!['street']),
              ),
            ],
          ),

          // amenities
          Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 20),
              child: Text(
                'Amenities',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 17),
              )),

          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 5),
            child: Wrap(
              children: listing.amenities!
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
                              ),
                            ),
                            Text(amenity)
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),

          // price and description
          Container(
            child: Text('Price and description'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 20),
            child: Text(
              listing.description!.capitalize(),
              style:
                  Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 17),
            ),
          ),
          Container(
            child: Text('Dalali fee'),
          ),
          //dalali fee
          Container(
            child: Text(listing.fee!.toStringAsFixed(2)),
          ),
          // p[rice]
          Container(
            child: Text('Price '),
          ),
          Container(
            child: Text(listing.price!.toStringAsFixed(2)),
          ),
        ],
      ),
    );
  }
}
