import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/utils/common.dart';
import 'package:nipange/utils/extensions.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/widgets/error.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class StatsItem extends StatefulWidget {
  final Listing listing;
  StatsItem({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  _StatsItemState createState() => _StatsItemState();
}

class _StatsItemState extends State<StatsItem> {
  final WebSocketChannel reviewChannel =
      IOWebSocketChannel.connect('$ws/api/review');
  @override
  void dispose() {
    reviewChannel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 23, bottom: 8, right: 23),
          child: Text(
            '${widget.listing.name!.capitalize()}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
          child: Material(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(left: 25.0, top: 8),
                  child: Text(
                    '${widget.listing.propertyType!.capitalize()}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 18, right: 18),
                  child: _buildFirst(context),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20),
                  child: _buildSecond(context),
                ),
              ],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }

  Widget _buildFirst(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // retings
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  StreamBuilder<dynamic>(
                      key: UniqueKey(),
                      stream: reviewStream(reviewChannel, widget.listing.id!),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // convert json data to reviews
                          List<Review> reviews = <Review>[];
                          List bodyList = jsonDecode(snapshot.data);
                          reviews.addAll(bodyList.map((review) =>
                              Review.fromJson(json.encode(review))));
                          return Text(
                            "${getRating(reviews).toStringAsFixed(1)} (${reviews.length})",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black54),
                          );
                        } else if (snapshot.hasError) {
                          return Flexible(
                            child: CustomErrorWidget(
                                error: snapshot.error.toString()),
                          );
                        }
                        return Container();
                      }),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).accentColor,
                  )
                ],
              ),
              Text(
                'Ratings',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        // review
        Expanded(
          child: Column(
            children: [
              Text(widget.listing.reviews!.length.toString()),
              Text(
                'Reviews',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        // likes
        Expanded(
          child: Column(
            children: [
              Text(widget.listing.likes != null
                  ? widget.listing.likes.toString()
                  : '0'),
              Text(
                'Likes',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSecond(BuildContext context) {
    return Column(
      children: [
        Text(widget.listing.views != null
            ? "${widget.listing.views.toString()}"
            : "0"),
        Text(
          "Views",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

Stream reviewStream(WebSocketChannel channel, String listingId) {
  channel.sink.add(jsonEncode({
    'id': listingId,
  }));
  return channel.stream;
}
