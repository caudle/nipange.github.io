import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/premium/premium_bloc.dart';
import 'package:nipange/presentation/premium/premium.dart';

import '../../injector.dart';

class PremiumNavigator extends StatelessWidget {
  PremiumNavigator(this.navigatorKey);
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
                  getIt<PremiumBloc>()..add(PremiumEvent.started()),
              child: PremiumPage(),
            );
          });

    default:
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  getIt<PremiumBloc>()..add(PremiumEvent.started()),
              child: PremiumPage(),
            );
          });
  }
}
