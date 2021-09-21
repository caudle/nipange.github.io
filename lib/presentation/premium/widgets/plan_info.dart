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
      appBar: AppBar(),
      body: ListView(
        children: [
          // title

          SizedBox(height: (MediaQuery.of(context).size.height / 6)),
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 20),
            alignment: Alignment.topCenter,
            child: Text('Current plan Details',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),

          //details
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            height: 250,
            child: Material(
              elevation: 3,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: Text(
                              'package name',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(flex: 4, child: Text(package.name)),
                      ],
                    ),
                  ),

                  // amount
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: Text(
                              'Amount Paid',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                            flex: 4,
                            child: Text('${package.amount.toString()} Tsh')),
                      ],
                    ),
                  ),

                  // created date
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: Text(
                              'created date',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                            flex: 4,
                            child:
                                Text('${package.createdAt.toReadable()} Tsh')),
                      ],
                    ),
                  ),

                  // exp date
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: Text(
                              'expire date',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                            flex: 4,
                            child:
                                Text('${package.expireAt!.toReadable()} Tsh')),
                      ],
                    ),
                  ),

                  // days remaining
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: Text(
                              'Days remaining',
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        Expanded(
                            flex: 4,
                            child: Text(
                                '${package.expireAt!.difference(package.createdAt).inDays.toString()} Days')),
                      ],
                    ),
                  ),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
