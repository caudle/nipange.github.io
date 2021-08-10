import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/app_bloc/app_bloc.dart';
import 'package:nipange/application/auth/reset_password/resetpassword_bloc.dart';
import 'package:nipange/injector.dart';
import 'package:nipange/presentation/auth/log_in/reset_password.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        state.map(initial: (state) {
          Navigator.pushNamed(context, '/listing');
        }, link: (state) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BlocProvider(
                create: (context) => getIt<ResetpasswordBloc>(),
                child: ResetPasswordPage(id: state.param));
          }));
        });
      },
    );
  }
}
