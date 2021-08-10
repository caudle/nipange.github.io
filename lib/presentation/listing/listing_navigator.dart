import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/listing.dart';

class ListingNavigator extends StatelessWidget {
  ListingNavigator(this.navigatorKey);
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
              create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
              child: ListingPage(),
            );
          });

    default:
      return MaterialPageRoute(
          settings: RouteSettings(name: '/'),
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
              child: ListingPage(),
            );
          });
  }
}
