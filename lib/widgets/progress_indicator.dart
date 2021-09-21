import 'package:flutter/material.dart';

class KCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        width: 60,
        height: 60,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
        ));
  }
}
