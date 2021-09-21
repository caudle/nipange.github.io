import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/host_account/host_account_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/host_account/widgets/host_account_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class HostAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    return Scaffold(
      body: user != null
          ? BlocProvider(
              create: (context) => getIt<HostAccountBloc>()
                ..add(HostAccountEvent.started(user.id)),
              child: HostAccountWidget())
          : SignUpWidget(
              gotoRoute: 'host',
              title: 'account',
              caption: 'sign up for an account',
              icon: Icons.person,
              isaction: true,
              switchRoute: '/',
            ),
    );
  }
}
