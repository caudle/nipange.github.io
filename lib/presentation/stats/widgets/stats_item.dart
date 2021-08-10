import 'package:flutter/material.dart';
import 'package:nipange/core/theme.dart';
import 'package:nipange/utils/extensions.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/review/review.dart';

class StatsItem extends StatelessWidget {
  final Listing listing;
  StatsItem({
    Key? key,
    required this.listing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('${listing.name!.capitalize()}.${listing.propertyType}'),
        ),
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
          child: Material(
            elevation: 1,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 35, right: 18),
                  child: _buildFirst(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20),
                  child: _buildSecond(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFirst() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: Text(_getRating(listing.reviews!).toString()),
                  ),
                  Icon(
                    Icons.star,
                  )
                ],
              ),
              Text('Rating'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(listing.reviews!.length.toString()),
              Text('Review'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(listing.likes != null ? listing.likes.toString() : '0'),
              Text('Likes'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSecond() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(listing.price != null
                  ? "${listing.price.toString()} Tsh"
                  : "0 Tsh"),
              Text("${DateTime.now().year} Earnings"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(listing.views != null
                  ? "${listing.views.toString()} Tsh"
                  : "0"),
              Text("Views"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [Container()],
          ),
        )
      ],
    );
  }
}

double _getRating(List reviews) {
  double rate = 0;
  reviews.forEach((e) {
    Review review = Review.fromMap(e);
    rate = rate + review.rate;
  });
  return rate > 0 ? rate / reviews.length : 0;
}
