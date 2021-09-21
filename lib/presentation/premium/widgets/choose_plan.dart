import 'package:flutter/material.dart';

import 'package:nipange/domain/package/package.dart';
import 'package:nipange/presentation/premium/widgets/payment_options.dart';

class ChoosePlanPage extends StatelessWidget {
  final Package package;
  final String hostId;
  final String listingId;
  const ChoosePlanPage({
    Key? key,
    required this.package,
    required this.hostId,
    required this.listingId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // title
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            alignment: Alignment.topCenter,
            child: Text('Premium Purchase',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),

          SizedBox(height: (MediaQuery.of(context).size.height / 7)),
          // invoice
          Container(
            alignment: Alignment.center,
            child: Text(
              'Invoice',
              style: Theme.of(context).textTheme.headline6,
            ),
            margin: EdgeInsets.only(left: 20, bottom: 20),
          ),

          // name
          Row(
            children: [
              Spacer(),
              Expanded(
                  flex: 2,
                  child: Text(
                    'package name',
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
              Expanded(flex: 2, child: Text(package.name)),
            ],
          ),

          // duration
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Text(
                      'Duration',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                Expanded(
                    flex: 2,
                    child: Text(
                        package.name == 'premium week' ? '7 days' : '30 days')),
              ],
            ),
          ),
          // amount
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Text(
                      'Amount',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                Expanded(
                    flex: 2, child: Text('${package.amount.toString()} Tsh')),
              ],
            ),
          ),

          // service charge
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Text(
                      'Service charge',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                Expanded(flex: 2, child: Text('0.00 Tsh')),
              ],
            ),
          ),

          // total
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Text(
                      'Total',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
                Expanded(
                    flex: 2, child: Text('${package.amount.toString()} Tsh')),
              ],
            ),
          ),

          // choose button
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 22),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentOptionsPage(
                    package: package,
                  );
                }));
              },
              child: Text('Continue'),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(double.infinity, 45)),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColorDark),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  elevation: MaterialStateProperty.all(0)),
            ),
          )
        ],
      ),
    );
  }
}
