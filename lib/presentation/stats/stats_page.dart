import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/stats/stats_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/stats/widgets/stats_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state.user != null)
            return BlocProvider(
              create: (context) =>
                  getIt<StatsBloc>()..add(StatsEvent.fetching(state.user!.id)),
              child: StatsWidget(),
            );
          else
            return SignUpWidget(
              gotoRoute: 'host',
              title: 'stats',
              caption: 'stats will appear here',
              icon: Icons.analytics,
              isaction: false,
            );
        },
      ),
    );
  }
}
