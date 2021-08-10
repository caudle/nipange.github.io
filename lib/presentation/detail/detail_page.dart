import 'package:flutter/material.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';
import 'package:nipange/core/theme.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/report/report_bloc.dart';
import 'package:nipange/injector.dart';

import 'package:nipange/presentation/detail/widgets/report.dart';
import 'package:nipange/presentation/detail/widgets/review_list.dart';
import 'package:nipange/utils/common.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import 'package:nipange/application/detail/detail_bloc.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/widgets/videoWiget.dart';

class DetailsPage extends StatelessWidget {
  final Listing listing;
  const DetailsPage({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailBloc = context.read<DetailBloc>();
    final user = context.watch<AuthBloc>().state.user;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // videos
            _buildVideos(
                context: context,
                listing: listing,
                bloc: detailBloc,
                user: user),
            // building name
            if (listing.propertyType == 'apartment')
              _buildBuildingName(context: context, listing: listing),
            // name
            _buildname(context: context, listing: listing),
            //star row
            _buildStarRow(context: context, listing: listing),
            _buildShadowSpace(context),
            // propert type
            _buildPropertyType(context: context, listing: listing),
            // bath and bed
            _buildBathAndBed(context: context, listing: listing),
            // size
            if (listing.size != null)
              _buildSize(context: context, listing: listing),
            if (listing.size == null) _buildNoSize(context),
            _buildShadowSpace(context),
            // desc
            _buildDescription(context: context, listing: listing),
            _buildShadowSpace(context),
            // amenities
            _buildAmenities(context: context, listing: listing),
            _buildShadowSpace(context),
            // location
            _buildLocation(context: context, listing: listing),
            _buildShadowSpace(context),
            // reviews
            _buildReview(context: context, listing: listing),
            _buildShadowSpace(context),
            // report listing
            _buildReportListing(context: context, listing: listing),
            _buildShadowSpace(context),
            _buildHostProfile(context: context, listing: listing),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(context),
    );
  }
}

Widget _buildVideos(
    {required BuildContext context,
    required Listing listing,
    required DetailBloc bloc,
    required User? user}) {
  return // video

      SliverPadding(
    padding: EdgeInsets.only(top: 0),
    sliver: SliverToBoxAdapter(
      child: Stack(
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
                    autoplay: true,
                  );
                }),
          ),

          // dots
          if (listing.videos!.length > 1)
            Positioned(
              bottom: 10,
              left: (MediaQuery.of(context).size.width / 2) -
                  (listing.videos!.length * 5),
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
          // share icon
          Positioned(
            bottom: 20,
            right: 2,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.white,
                )),
          ),
          // fav icon
          Positioned(
            bottom: 80,
            right: 2,
            child: StreamBuilder<dynamic>(
                stream:
                    favStream(bloc: bloc, user: user, listingId: listing.id!),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    //print(jsonDecode(snapshot.data));
                    bool exists = jsonDecode(snapshot.data);
                    return IconButton(
                      onPressed: user != null
                          ? () {
                              exists
                                  ? bloc.add(DetailEvent.deleteListing(
                                      listingId: listing.id!, userId: user.id))
                                  : bloc.add(DetailEvent.addListing(
                                      listingId: listing.id!, userId: user.id));
                            }
                          : () {
                              // show alert
                              showAlertDialog(
                                  context: context, route: '/details');
                            },
                      icon: Icon(
                        exists
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline,
                        color: exists ? AppColor.ksecondaryColor : Colors.white,
                      ),
                    );
                  }
                  return Container();
                }),
          ),
          // back icon
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBuildingName(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
      child: Container(
    padding: EdgeInsets.only(left: 18, top: 20),
    child: Text(
      listing.building!.capitalize(),
      style:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
    ),
  ));
}

Widget _buildname({required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
      child: Container(
    padding: EdgeInsets.only(left: 18, top: 5),
    child: Text(
      listing.name!.capitalize(),
      style:
          Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
    ),
  ));
}

Widget _buildStarRow(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 14, top: 5.0, bottom: 8),
          child: Row(
            children: [
              IconTheme(
                data: Theme.of(context)
                    .iconTheme
                    .copyWith(color: AppColor.ksecondaryColor),
                child: Icon(
                  Icons.star,
                ),
              ),
              // rate
              StreamBuilder<dynamic>(
                  stream: reviewStream(state: state, listingId: listing.id!),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // convert json data to reviews
                      List<Review> reviews = <Review>[];
                      List bodyList = jsonDecode(snapshot.data);
                      reviews.addAll(bodyList.map(
                          (review) => Review.fromJson(json.encode(review))));
                      return Flexible(
                        child: Text(
                          "${getRating(reviews).toStringAsFixed(1)} (${reviews.length})",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black54),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Flexible(
                        child:
                            CustomErrorWidget(error: snapshot.error.toString()),
                      );
                    }
                    return Container();
                  }),
              // dot
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 4,
                height: 4,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
              Text(
                "${listing.location!['region'].toString().capitalize()}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black54),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 4,
                height: 4,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
              Text(
                "${listing.location!['district'].toString().capitalize()}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black54),
              ),
            ],
          ),
        );
      },
    ),
  );
}

Stream reviewStream({required DetailState state, required String listingId}) {
  state.reviewChannel.sink.add(jsonEncode({
    'id': listingId,
  }));
  return state.reviewChannel.stream;
}

Stream reviewListStream(
    {required DetailState state, required String listingId}) {
  state.reviewListChannel.sink.add(jsonEncode({
    'id': listingId,
  }));
  return state.reviewListChannel.stream;
}

Stream favStream(
    {required DetailBloc bloc,
    required User? user,
    required String listingId}) {
  bloc.state.existsChannel.sink.add(jsonEncode({
    "listingId": listingId,
    "userId": user == null ? "" : user.id,
  }));
  return bloc.state.existsChannel.stream;
}

Widget _buildPropertyType(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.only(left: 18, bottom: 5, top: 20),
      child: Text(listing.propertyType!.toString().capitalize(),
          style: Theme.of(context).textTheme.headline6),
    ),
  );
}

Widget _buildBathAndBed(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 10),
      child: Row(
        children: [
          Text(
            listing.bedroom.toString(),
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text('Bedrooms')),
          Icon(Icons.bed),
          SizedBox(
            width: 29,
          ),
          Text(
            listing.bathroom.toString(),
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text('Bathrooms')),
          Icon(Icons.shower),
        ],
      ),
    ),
  );
}

Widget _buildShadowSpace(BuildContext context) {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 20,
      color: Colors.grey[200],
    ),
  );
}

Widget _buildSize({required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
      child: RichText(
        text: TextSpan(
            text: listing.size!.toString(),
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            children: [
              TextSpan(
                text: "  square meter in size",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              )
            ]),
      ),
    ),
  );
}

Widget _buildNoSize(BuildContext context) {
  return SliverToBoxAdapter(
    child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
        child: Text('Property size not available')),
  );
}

Widget _buildDescription(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            listing.description!.capitalize(),
          ),
        ],
      ),
    ),
  );
}

Widget _buildAmenities(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 20, bottom: 8),
          child: Text(
            'Amenities',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Wrap(
          children: listing.amenities!
              .map((amenity) => Padding(
                    padding: const EdgeInsets.only(right: 14.0, bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8.0, left: 18),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).iconTheme.color),
                        ),
                        Text(
                          amenity,
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ],
    ),
  );
}

Widget _buildLocation(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            'Location',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              // location
              Expanded(
                flex: 1,
                child: Text(
                    "${listing.location!['country'].toString().capitalize()}, ${listing.location!['region'].toString().capitalize()}, ${listing.location!['district'].toString().capitalize()}, ${listing.location!['street'].toString().capitalize()}"),
              ),
              //Spacer(),
              SizedBox(width: 40),
              // map
              Expanded(
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/images/map1.png'),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildReview({required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: BlocBuilder<DetailBloc, DetailState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: StreamBuilder<dynamic>(
            stream: reviewListStream(state: state, listingId: listing.id!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // convert json data to reviews
                List<Review> reviews = <Review>[];
                List bodyList = jsonDecode(snapshot.data);
                reviews.addAll(bodyList
                    .map((review) => Review.fromJson(json.encode(review))));
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
                      child: Text(
                        'Reviews',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Row(
                      children: [
                        // star icon
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0, right: 1),
                          child: Icon(
                            Icons.star,
                            color: AppColor.ksecondaryColor,
                          ),
                        ),
                        // rate
                        Flexible(
                          child: Text(
                            "${getRating(reviews).toStringAsFixed(1)}",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        // dot
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                        ),
                        // reviews
                        Flexible(
                          child: Text(
                            ' ${reviews.length} Review (s)',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    // user
                    if (reviews.length > 0)
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 15, bottom: 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: reviews[0].user['dp'] != null
                                    ? NetworkImage(
                                        '$api/${reviews[0].user['dp']}')
                                    : null,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(reviews[0].user['firstName']),
                                Text(reviews[0].user['lastName']),
                              ],
                            )
                          ],
                        ),
                      ),
                    if (reviews.length > 0)
                      Container(
                        padding: EdgeInsets.only(right: 18, left: 18),
                        child: Text(reviews[0].text.capitalize()),
                      ),
                    if (reviews.length > 0)
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18, top: 28.0, right: 18, bottom: 18),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ReviewList(reviews: reviews);
                            }));
                          },
                          child: Text('Show all ${reviews.length} review (s)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorDark,
                                  )),
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(MediaQuery.of(context).size.width, 49)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              side: MaterialStateProperty.all(BorderSide(
                                color: Colors.black,
                              ))),
                        ),
                      ),

                    // add review buttn
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(right: 18, bottom: 20),
                      child: TextButton(
                        onPressed: state.currentUser != null
                            ? () {
                                createBottomSheet(context).then((value) {
                                  if (value != null) {
                                    context.read<DetailBloc>().add(
                                        DetailEvent.sendPressed(
                                            star: value['star'],
                                            comment: value['comment'],
                                            listingId: listing.id!));
                                  }
                                });
                              }
                            : null,
                        child: Text('Add review'),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            elevation: MaterialStateProperty.all(3),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(Size(150, 40))),
                      ),
                    ),

                    // loading
                    if (state.isLoading) KCircularProgressIndicator(),
                  ],
                );
              } else if (snapshot.hasError) {
                return CustomErrorWidget(error: snapshot.error.toString());
              }
              // shadow
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.grey[200],
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      width: 150,
                      height: 20,
                      color: Colors.grey[200],
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          margin: const EdgeInsets.only(bottom: 5),
                        ),
                        Container(
                          width: 60,
                          height: 40,
                          color: Colors.grey[200],
                          margin: const EdgeInsets.only(left: 10, bottom: 5),
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      height: 20,
                      color: Colors.grey[200],
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      width: 200,
                      height: 20,
                      color: Colors.grey[200],
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 20,
                      color: Colors.grey[200],
                      margin: const EdgeInsets.only(bottom: 5),
                    ),
                  ],
                ),
              );
            }),
      );
    }),
  );
}

Widget _buildReportListing(
    {required BuildContext context, required Listing listing}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 18),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // report icon
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) =>
                        getIt<ReportBloc>()..add(ReportEvent.started()),
                    child: ReportWidget(),
                  );
                }));
              },
              icon: Icon(Icons.report, color: Theme.of(context).accentColor),
              padding: EdgeInsets.zero),

          Text(
            'Report this listing',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    ),
  );
}

//bottom sheet
Future createBottomSheet(BuildContext context) {
  TextEditingController commentController = TextEditingController();
  int starOne = 0;
  int starTwo = 0;
  int starThree = 0;
  int starFour = 0;
  int starFive = 0;

  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, changeState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: commentController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Enter your comment here',
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    maxLines: 6,
                  ),
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        changeState(() {
                          starOne = starOne == 0 ? 1 : 0;
                        });
                      },
                      icon: starOne == 0
                          ? Icon(Icons.star_border_outlined)
                          : Icon(
                              Icons.star,
                            ),
                    ),
                    IconButton(
                      onPressed: () {
                        changeState(() {
                          starTwo = starTwo == 0 ? 1 : 0;
                        });
                      },
                      icon: starTwo == 0
                          ? Icon(Icons.star_border_outlined)
                          : Icon(
                              Icons.star,
                            ),
                    ),
                    IconButton(
                      onPressed: () {
                        changeState(() {
                          starThree = starThree == 0 ? 1 : 0;
                        });
                      },
                      icon: starThree == 0
                          ? Icon(Icons.star_border_outlined)
                          : Icon(
                              Icons.star,
                            ),
                    ),
                    IconButton(
                      onPressed: () {
                        changeState(() {
                          starFour = starFour == 0 ? 1 : 0;
                        });
                      },
                      icon: starFour == 0
                          ? Icon(Icons.star_border_outlined)
                          : Icon(
                              Icons.star,
                            ),
                    ),
                    IconButton(
                      onPressed: () {
                        changeState(() {
                          starFive = starFive == 0 ? 1 : 0;
                        });
                      },
                      icon: starFive == 0
                          ? Icon(Icons.star_border_outlined)
                          : Icon(
                              Icons.star,
                            ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: commentController.value.text.isNotEmpty
                    ? () {
                        // dismiss bottom
                        Navigator.pop(context, {
                          "star": starOne +
                              starTwo +
                              starThree +
                              starFour +
                              starFive,
                          "comment": commentController.value.text,
                        });
                      }
                    : null,
                child: Text('Send'),
              )
            ],
          );
        });
      });
}

Widget _buildHostProfile(
    {required BuildContext context, required Listing listing}) {
  return // host profile
      SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 30),
      child: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Host',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (state.hostUser != null)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Hosted by ${state.hostUser!.firstName.capitalize()} ${state.hostUser!.firstName.capitalize()}',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        if (state.hostUser != null)
                          Text(
                            'Joined in ${DateTime.parse(state.hostUser!.createdAt).toReadable()} ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                      ],
                    ),
                  ),

                  // dp
                  if (state.hostUser != null)
                    Expanded(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: state.hostUser!.dp.isNotEmpty
                            ? NetworkImage('$api/${state.hostUser!.dp}')
                            : null,
                      ),
                    )
                ],
              ),

              SizedBox(
                height: 40,
              ),
              // premium
              // TODO CHECK IF USER IS PREMIUM
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: Icon(Icons.payment)),
                  SizedBox(width: 40),
                  Expanded(
                      flex: 2,
                      child: Text(
                        'Premium membership',
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  Expanded(child: Icon(Icons.done))
                ],
              ),
              // email verified
              Row(
                children: [
                  Flexible(child: Icon(Icons.email)),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        'Email verification',
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  if (state.hostUser != null)
                    Expanded(
                      child: Icon(
                        state.hostUser!.isEmailVerified
                            ? Icons.done
                            : Icons.close,
                        color: state.hostUser!.isPhoneVerified
                            ? Theme.of(context).iconTheme.color
                            : Colors.red,
                      ),
                    ),
                ],
              ),

              // phone verified
              Row(
                children: [
                  Flexible(child: Icon(Icons.phone)),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        'Phone verification',
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  if (state.hostUser != null)
                    Expanded(
                      child: Icon(
                        state.hostUser!.isPhoneVerified
                            ? Icons.done
                            : Icons.close,
                        color: state.hostUser!.isPhoneVerified
                            ? Theme.of(context).iconTheme.color
                            : Colors.red,
                      ),
                    ),
                ],
              ),
            ],
          );
        },
      ),
    ),
  );
}

Widget _buildBottomNav(BuildContext context) {
  return BlocBuilder<DetailBloc, DetailState>(
    builder: (context, state) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        height: 70,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // sms
            if (state.hostUser != null)
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // call sms app
                    launch("sms:${state.hostUser!.phone}");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.message),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('SMS'),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 45)),
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColorLight),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ),

            Spacer(),

            // call
            if (state.hostUser != null)
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // call phone app
                    launch("tel:${state.hostUser!.phone}");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Call'),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 45)),
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColorLight),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ),
          ],
        ),
      );
    },
  );
}

showAlertDialog({required BuildContext context, required String route}) {
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

      Navigator.of(context, rootNavigator: true)
          .pushNamed('signup', arguments: route)
          .then((_) {
        // fetch new user
        context.read<AuthBloc>().add(AuthEvent.started());
      });
    },
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColorLight),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Log in",
    ),
    content: Text(
        "Save your favourite places for later and share with friends and enjoy many more."),
    actions: [
      cancelButton,
      SizedBox(
        width: 20,
      ),
      signUpButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
