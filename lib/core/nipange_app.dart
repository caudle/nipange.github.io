import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';

import 'package:nipange/application/auth/login_details/login_details_bloc.dart';
import 'package:nipange/application/auth/sign_up_form/bloc/sign_up_form_bloc.dart';

import 'package:nipange/application/filter/filter_bloc.dart';

import 'package:nipange/core/theme.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/injector.dart';

import 'package:nipange/presentation/auth/login_details/log_in_details.dart';
import 'package:nipange/presentation/auth/sign_up_form/sign_up_form.dart';

import 'package:nipange/presentation/explore/widgets/filter.dart';
import 'package:nipange/presentation/explore/widgets/filter_results.dart';

import 'package:nipange/presentation/home.dart';
import 'package:nipange/presentation/host.dart';
import 'package:nipange/presentation/onboarding/onboarding.dart';

class NipangeApp extends StatelessWidget {
  final String userType;
  final int? initScreen;
  NipangeApp({
    Key? key,
    required this.userType,
    required this.initScreen,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(AuthEvent.started()),
      child: MaterialApp(
        theme: lightTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: initScreen == null
            ? 'onboarding'
            : userType == 'customer'
                ? '/'
                : 'host',
        routes: <String, Widget Function(BuildContext context)>{
          '/': (context) => HomePage(),
          'host': (context) => HostPage(),
          'onboarding': (context) => OnboardingPage(),
        },
        onGenerateRoute: _generateRoute,
      ),
    );
  }
}

Route _generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'signup':
      return MaterialPageRoute(
        settings: RouteSettings(name: 'signup'),
        builder: (context) {
          final String route = settings.arguments as String;
          return BlocProvider(
            create: (context) => getIt<SignUpFormBloc>(),
            child: SignUpFormPage(route: route),
          );
        },
      );

    case 'signup/logindetails':
      return MaterialPageRoute<Map>(
        settings: RouteSettings(name: 'signup/logindetails'),
        builder: (context) {
          final map = settings.arguments as Map;
          return BlocProvider(
              create: (context) => getIt<LoginDetailsBloc>(),
              child: LoginDetailsPage(
                phone: map['phone'],
                email: map['email'],
                route: map['route'],
              ));
        },
      );

    case '/filter':
      return MaterialPageRoute(
          settings: RouteSettings(name: '/filter'),
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  getIt<FilterBloc>()..add(FilterEvent.started()),
              child: FilterPage(),
            );
          });
    case '/filter/results':
      return MaterialPageRoute(
          settings: RouteSettings(name: '/filter/results'),
          builder: (context) {
            final listings = settings.arguments as Future<List<Listing>>;
            return FilterResultsPage(
              listings: listings,
            );
          });

    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
