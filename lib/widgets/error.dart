import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String error;
  const CustomErrorWidget({
    Key? key,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      alignment: Alignment.center,
      child: Text(
        error,
        style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16),
      ),
    );
  }
}
