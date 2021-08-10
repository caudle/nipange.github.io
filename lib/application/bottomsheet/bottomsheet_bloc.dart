import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottomsheet_event.dart';
part 'bottomsheet_state.dart';
part 'bottomsheet_bloc.freezed.dart';

class BottomsheetBloc extends Bloc<BottomsheetEvent, BottomsheetState> {
  BottomsheetBloc() : super(_Initial());

  @override
  Stream<BottomsheetState> mapEventToState(
    BottomsheetEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
