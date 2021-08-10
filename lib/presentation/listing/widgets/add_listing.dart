import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/add_listing/add_listing_bloc.dart';
import 'package:nipange/application/amenity/amenity_bloc.dart';
import 'package:nipange/application/location/location_bloc.dart';
import 'package:nipange/application/photos/photos_bloc.dart';
import 'package:nipange/application/price/price_bloc.dart';
import 'package:nipange/application/property/property_bloc.dart';
import 'package:nipange/application/videos/videos_bloc.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/amenities.dart';
import 'package:nipange/presentation/listing/widgets/location.dart';
import 'package:nipange/presentation/listing/widgets/photos.dart';
import 'package:nipange/presentation/listing/widgets/price.dart';
import 'package:nipange/presentation/listing/widgets/property_type.dart';
import 'package:nipange/presentation/listing/widgets/videos.dart';

enum type { property, location, amenities, photos, videos, price }

class AddListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addBloc = context.read<AddListingBloc>();
    print(addBloc.state.listing);
    return Scaffold(body: BlocBuilder<AddListingBloc, AddListingState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Container(
                padding: EdgeInsets.only(top: 60),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Let\'s set up your listing",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 25, color: Colors.white),
                ),
              ),
              toolbarHeight: 120,
              expandedHeight: 139,
              floating: true,
              snap: true,
              iconTheme: IconThemeData(color: Colors.white),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "Property type",
                    child: PropertyTypePage(),
                    passedType: type.property,
                    addBloc: addBloc,
                    isDisabled: false,
                    isCompleted: addBloc.state.listing.complete! >= 1.0),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "Location",
                    child: LocationPage(),
                    passedType: type.location,
                    addBloc: addBloc,
                    isDisabled: addBloc.state.listing.complete! < 2 &&
                        addBloc.state.listing.complete != 1,
                    isCompleted: addBloc.state.listing.complete! >= 2),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "Amenities",
                    child: AmenitiesPage(),
                    passedType: type.amenities,
                    addBloc: addBloc,
                    isDisabled: addBloc.state.listing.complete! < 3 &&
                        addBloc.state.listing.complete != 2,
                    isCompleted: addBloc.state.listing.complete! >= 3),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "photos",
                    child: Photospage(),
                    passedType: type.photos,
                    addBloc: addBloc,
                    isDisabled: addBloc.state.listing.complete! < 4 &&
                        addBloc.state.listing.complete != 3,
                    isCompleted: addBloc.state.listing.complete! >= 4),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "Videos",
                    child: VideosPage(),
                    passedType: type.videos,
                    addBloc: addBloc,
                    isDisabled: addBloc.state.listing.complete! < 5 &&
                        addBloc.state.listing.complete != 4,
                    isCompleted: addBloc.state.listing.complete! >= 5),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildWidget(
                    context: context,
                    title: "Pricing",
                    child: PricePage(),
                    passedType: type.price,
                    addBloc: addBloc,
                    isDisabled: addBloc.state.listing.complete! < 6 &&
                        addBloc.state.listing.complete != 5,
                    isCompleted: addBloc.state.listing.complete! >= 6),
              ),
            ]))
          ],
        );
      },
    ));
  }

  Widget buildWidget({
    required BuildContext context,
    required String title,
    required Widget child,
    required type passedType,
    required AddListingBloc addBloc,
    required bool isDisabled,
    required bool isCompleted,
  }) {
    return isDisabled
        ? //disabled
        Row(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
            ],
          )
        : isCompleted
            ? //complete
            GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.black38),
                    ),
                    Icon(
                      Icons.done,
                      size: 40,
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      switch (passedType) {
                        // propert type
                        case type.property:
                          return BlocProvider(
                            create: (context) => getIt<PropertyBloc>()
                              ..add(PropertyEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        // location
                        case type.location:
                          return BlocProvider(
                            create: (context) => getIt<LocationBloc>()
                              ..add(LocationEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        // amenities
                        case type.amenities:
                          return BlocProvider(
                            create: (context) => getIt<AmenityBloc>()
                              ..add(AmenityEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        // photos
                        case type.photos:
                          return BlocProvider(
                            create: (context) => getIt<PhotosBloc>()
                              ..add(PhotosEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        // videos
                        case type.videos:
                          return BlocProvider(
                            create: (context) => getIt<VideosBloc>()
                              ..add(VideosEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        // price
                        case type.price:
                          return BlocProvider(
                            create: (context) => getIt<PriceBloc>()
                              ..add(PriceEvent.add(addBloc.state.listing)),
                            child: child,
                          );

                        default:
                          return Container();
                      }
                    },
                  ));
                },
              )
            : // continue
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headline6),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          switch (passedType) {
                            // prop
                            case type.property:
                              return BlocProvider(
                                create: (context) => getIt<LocationBloc>()
                                  ..add(
                                      LocationEvent.add(addBloc.state.listing)),
                                child: child,
                              );

                            // loc
                            case type.location:
                              return BlocProvider(
                                create: (context) => getIt<LocationBloc>(),
                                child: child,
                              );

                            // ament
                            case type.amenities:
                              return BlocProvider(
                                create: (context) => getIt<AmenityBloc>()
                                  ..add(
                                      AmenityEvent.add(addBloc.state.listing)),
                                child: child,
                              );

                            // photos
                            case type.photos:
                              return BlocProvider(
                                create: (context) => getIt<PhotosBloc>()
                                  ..add(PhotosEvent.add(addBloc.state.listing)),
                                child: child,
                              );

                            // videos
                            case type.videos:
                              return BlocProvider(
                                create: (context) => getIt<VideosBloc>()
                                  ..add(VideosEvent.add(addBloc.state.listing)),
                                child: child,
                              );

                            // price
                            case type.price:
                              return BlocProvider(
                                create: (context) => getIt<PriceBloc>()
                                  ..add(PriceEvent.add(addBloc.state.listing)),
                                child: child,
                              );

                            default:
                              return Container();
                          }
                        },
                      ));
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          AppColor.kprimaryLightColor),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(100, 45)),
                    ),
                  )
                ],
              );
  }
}
