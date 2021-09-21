import 'package:flutter/material.dart';
import 'package:nipange/presentation/host_account/host_account_page.dart';

class HostAccountNavigator extends StatelessWidget {
  HostAccountNavigator(this.navigatorKey);
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
            return HostAccountPage();
          });
    default:
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return HostAccountPage();
          });
  }
}
