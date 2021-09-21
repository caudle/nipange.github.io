import 'package:flutter/material.dart';

import 'package:nipange/domain/package/package.dart';

class PaymentOptionsPage extends StatelessWidget {
  final Package package;
  const PaymentOptionsPage({
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
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            alignment: Alignment.topCenter,
            child: Text('Pay by',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          // options
          GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 16,
            mainAxisSpacing: 30,
            children: [
              //mpesa
              Material(
                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/mpesa.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {},
                ),
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
              ),

              //tigo pesa
              Material(
                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/tigo_pesa.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {},
                ),
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
              ),
              //airtel m
              Material(
                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/airtel_money.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {},
                ),
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
              ),
              //mpesa
              Material(
                child: InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/halopesa.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {},
                ),
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
              )
            ],
          ),
        ],
      ),
    );
  }
}
