import 'package:flutter/material.dart';

import 'package:nipange/domain/package/package.dart';

import 'package:nipange/utils/extensions.dart';

class PlanInfoPage extends StatelessWidget {
  final Package package;
  const PlanInfoPage({
    Key? key,
    required this.package,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // close icon
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // title
          Container(
            child: Text('Current plan Information'),
          ),

          //details
          Center(
            child: Column(
              children: [
                // name
                Row(
                  children: [
                    Text('package name'),
                    Text(package.name),
                  ],
                ),
                // amount
                Row(
                  children: [
                    Text('Amount paid'),
                    Text(package.amount.toString()),
                  ],
                ),
                // created date
                Row(
                  children: [
                    Text('created date'),
                    Text(package.createdAt.toReadable()),
                  ],
                ),
                // exp date
                Row(
                  children: [
                    Text('expire date'),
                    Text(package.expireAt!.toReadable()),
                  ],
                ),
                // days remaining
                Row(
                  children: [
                    Text('Days remaining'),
                    Text(
                        '${package.expireAt!.difference(package.createdAt).inDays.toString()} Days'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
