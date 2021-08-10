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
      body: ListView(
        children: [
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
            child: Text('Pay by'),
          ),

          // options
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              //mpesa
              Material(
                child: Container(
                  child: Image.asset('assets/images/mpesa.png'),
                ),
              ),
              //tigo pesa
              Material(
                child: Container(
                  child: Image.asset('assets/images/tigo_pesa.jpeg'),
                ),
              ),
              //airtel m
              Material(
                child: Container(
                  child: Image.asset('assets/images/airtel_money.jpg'),
                ),
              ),
              //mpesa
              Material(
                child: Container(
                  child: Image.asset('assets/images/halopesa.jpeg'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
