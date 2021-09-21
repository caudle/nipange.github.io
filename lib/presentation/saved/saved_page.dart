import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/saved/saved_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/saved/widgets/saved_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class SavedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    return Scaffold(
      body: user != null
          ? BlocProvider(
              create: (context) =>
                  getIt<SavedBloc>()..add(SavedEvent.started()),
              child: SavedWidget())
          : SignUpWidget(
              gotoRoute: '/',
              title: 'saved',
              caption: 'Your favourite saved listings will appear here',
              icon: Icons.favorite,
              isaction: false,
            ),
    );
  }
}
