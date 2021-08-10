part of 'resetpassword_bloc.dart';

@freezed
class ResetpasswordState with _$ResetpasswordState {
  const factory ResetpasswordState({
    required TextEditingController passwordController,
    required TextEditingController confirmController,
    required bool isLoading,
    required bool isSuccess,
    required String failureMessage,
  }) = _ResetpasswordState;
  factory ResetpasswordState.initial() => ResetpasswordState(
        passwordController: TextEditingController(),
        confirmController: TextEditingController(),
        isLoading: false,
        isSuccess: false,
        failureMessage: '',
      );
}
