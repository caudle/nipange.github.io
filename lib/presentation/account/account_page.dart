import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/account/account_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/account/widgets/account_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    return Scaffold(
      body: user != null
          ? BlocProvider(
              create: (context) =>
                  getIt<AccountBloc>()..add(AccountEvent.started()),
              child: AccountWidget())
          : SignUpWidget(
              gotoRoute: '/',
              title: 'account',
              caption: 'sign up for an account',
              icon: Icons.person,
            ),
    );
  }
}
