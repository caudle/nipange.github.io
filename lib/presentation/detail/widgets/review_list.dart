import 'package:flutter/material.dart';

import 'package:nipange/domain/review/review.dart';
import 'package:nipange/utils/extensions.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;
  const ReviewList({
    Key? key,
    required this.reviews,
  }) : super(key: key);
  final String api = "http://172.20.10.11:5000";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: ListView(children: [
        // reviews
        Column(
          children: reviews
              .map(
                (review) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, right: 18, top: 18),
                      child: Row(
                        children: [
                          // dp
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage('$api/${review.user['dp']}'),
                              ),
                            ),
                          ),
                          //names
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(review.user['firstName'],
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                Text(review.user['lastName'],
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),

                          // date
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Text(review.createdAt.toReadable()),
                          )
                        ],
                      ),
                    ),
                    // text
                    Container(
                      padding: EdgeInsets.only(
                          top: 14, left: 18, right: 18, bottom: 18),
                      child: Text(review.text.capitalize()),
                    ),

                    // shadow space
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width,
                      height: 20,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              )
              .toList(),
        )
      ]),
    );
  }
}
