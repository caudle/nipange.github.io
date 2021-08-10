import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/listing/listing_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/listing_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class ListingPage extends StatelessWidget {
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state.user != null)
            return BlocProvider(
              create: (context) => getIt<ListingBloc>()
                ..add(ListingEvent.fetching(state.user!.id)),
              child: ListingWidget(),
            );
          else
            return SignUpWidget(
              gotoRoute: 'host',
              title: 'listings',
              caption: 'your listing will appear here',
              icon: Icons.apartment,
            );
        },
      ),
    );
  }
}
