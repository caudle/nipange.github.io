import 'package:flutter/material.dart';

import 'package:nipange/presentation/stats/stats_page.dart';

class StatsNavigator extends StatelessWidget {
  StatsNavigator(this.navigatorKey);
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
            return StatsPage();
          });

    default:
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return StatsPage();
          });
  }
}
