import 'package:flutter/material.dart';

import 'package:nipange/domain/package/package.dart';
import 'package:nipange/presentation/premium/widgets/payment_options.dart';

class ChoosePlanPage extends StatelessWidget {
  final Package package;
  const ChoosePlanPage({
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
            child: Text('Premium Purchase'),
          ),
          // invoice
          Container(
            child: Text('Invoice'),
          ),

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
                    Text('Amount'),
                    Text(package.amount.toString()),
                  ],
                ),
                // duration
                Row(
                  children: [
                    Text('Duration'),
                    Text(package.name == 'premium week' ? '7 days' : '30 days'),
                  ],
                ),
              ],
            ),
          ),

          // choose button
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentOptionsPage(
                    package: package,
                  );
                }));
              },
              child: Text('Continue'))
        ],
      ),
    );
  }
}
