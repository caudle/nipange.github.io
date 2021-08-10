part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.started() = _Started;
  const factory ReportEvent.emailChanged(String email) = _EmailChanged;
  const factory ReportEvent.flagChanged(String flag) = _FlagChanged;
  const factory ReportEvent.userTypeChanged(String type) = _UserTypeChanged;
  const factory ReportEvent.send() = _Send;
}
