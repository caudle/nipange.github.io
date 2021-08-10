import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/explore/explore_bloc.dart';
import 'package:nipange/presentation/explore/explore.dart';

import '../../injector.dart';

class ExploreNavigator extends StatelessWidget {
  ExploreNavigator(this.navigatorKey);
  final GlobalKey<NavigatorState> navigatorKey;
  static const String rootRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: rootRoute,
      onGenerateRoute: _generateRoute,
    );
  }
}

Route _generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  getIt<ExploreBloc>()..add(ExploreEvent.started()),
              child: ExplorePage(),
            );
          });

    default:
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  getIt<ExploreBloc>()..add(ExploreEvent.started()),
              child: ExplorePage(),
            );
          });
  }
}
