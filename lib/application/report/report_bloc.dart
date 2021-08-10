import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/report/i_report_repo.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final IReportRepo iReportRepo;
  ReportBloc(this.iReportRepo) : super(ReportState.initial());

  @override
  Stream<ReportState> mapEventToState(
    ReportEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // fetch flags
        final futureFlags = iReportRepo.getFlags();
        yield state.copyWith(
            flags: futureFlags,
            isloading: false,
            isSuccess: false,
            isError: false);
      },
      emailChanged: (e) async* {
        yield state.copyWith(
            email: e.email, isloading: false, isSuccess: false, isError: false);
      },
      flagChanged: (e) async* {
        yield state.copyWith(
            flagDropdownValue: e.flag,
            isloading: false,
            isSuccess: false,
            isError: false);
      },
      userTypeChanged: (e) async* {
        yield state.copyWith(
            userTypeDropdownValue: e.type,
            isloading: false,
            isSuccess: false,
            isError: false);
      },
      send: (e) async* {
        try {
          // load
          yield state.copyWith(
              isloading: true, isSuccess: false, isError: false);
          // send report
          await iReportRepo.createReport(
            email: state.emailController.value.text,
            type: state.flagDropdownValue,
            userType: state.userTypeDropdownValue,
            comment: state.commentController.value.text,
          );
          yield state.copyWith(
            isloading: false,
            isSuccess: true,
            isError: false,
          );
        } catch (e) {
          yield state.copyWith(
              isloading: false, isSuccess: false, isError: true);
        }
      },
    );
  }

  // dispose controllers
  void dispose() {
    state.emailController.dispose();
    state.commentController.dispose();
  }
}
