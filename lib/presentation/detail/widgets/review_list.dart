/* author: caudle-misfit
   @2021
*/

import 'package:flutter/material.dart';

import 'package:nipange/domain/review/review.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:nipange/utils/extensions.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;
  const ReviewList({
    Key? key,
    required this.reviews,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.white,
        title: Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
      ),
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
                                    reviews[0].user['dp'].isNotEmpty
                                        ? NetworkImage(
                                            '$api/${reviews[0].user['dp']}')
                                        : null,
                                child: reviews[0].user['dp'].isEmpty
                                    ? Text(reviews[0]
                                        .user['username'][0]
                                        .toUpperCase())
                                    : null,
                              ),
                            ),
                          ),
                          //names
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(review.user['username'],
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),

                          // date
                          Expanded(
                            flex: 2,
                            child: Text(review.createdAt.toReadable(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontSize: 12)),
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
                      height: 5,
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
