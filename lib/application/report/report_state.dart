part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    required TextEditingController emailController,
    required String? email,
    required String flagDropdownValue,
    required Future<List<String>?> flags,
    required String userTypeDropdownValue,
    required List<String> userTypes,
    required TextEditingController commentController,
    required bool isSuccess,
    required bool isError,
    required bool isloading,
  }) = _ReportState;
  factory ReportState.initial() => ReportState(
        emailController: TextEditingController(),
        email: null,
        flagDropdownValue: 'property not available',
        flags: Future.value(),
        userTypeDropdownValue: "I am a customer",
        userTypes: ["I am a customer", "I am the owner", "I am the agent"],
        commentController: TextEditingController(),
        isSuccess: false,
        isError: false,
        isloading: false,
      );
}
