import 'package:flutter/material.dart';
import 'package:nipange/application/explore/explore_bloc.dart';

import 'package:nipange/domain/category/category.dart';
import 'package:nipange/utils/extensions.dart';

class CatItem extends StatelessWidget {
  final Category category;
  final ExploreState state;
  CatItem({
    Key? key,
    required this.category,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: Center(
        child: Text(
          category.name.capitalize(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: category.name == state.property
                  ? Colors.white
                  : Colors.black),
        ),
      ),
      decoration: BoxDecoration(
          color: category.name == state.property
              ? Theme.of(context).accentColor
              : null,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: category.name == state.property
                  ? Colors.white
                  : Colors.black)),
    );
  }
}
