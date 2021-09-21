import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/auth/auth_check/auth_bloc.dart';
import 'package:nipange/application/listing/listing_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/listing/widgets/listing_widget.dart';
import 'package:nipange/widgets/signup_widget.dart';

class ListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.user;
    return Scaffold(
        body: user != null
            ? BlocProvider(
                create: (context) =>
                    getIt<ListingBloc>()..add(ListingEvent.fetching(user.id)),
                child: ListingWidget(
                  userId: user.id,
                ),
              )
            : SignUpWidget(
                gotoRoute: 'host',
                title: 'listings',
                caption: 'your listings will appear here',
                icon: Icons.apartment,
                isaction: false,
              ));
  }
}
