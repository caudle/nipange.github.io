import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'saved_event.dart';
part 'saved_state.dart';
part 'saved_bloc.freezed.dart';

@injectable
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  final IAuth iAuth;
  SavedBloc(this.iAuth) : super(SavedState.initial());

  @override
  Stream<SavedState> mapEventToState(
    SavedEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      final user = await iAuth.getCurrentUser();
      yield state.copyWith(user: user);
    });
  }

  void dispose() {
    state.savedChannel.sink.close();
  }
}
