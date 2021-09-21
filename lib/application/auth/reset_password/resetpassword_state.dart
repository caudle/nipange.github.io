part of 'resetpassword_bloc.dart';

@freezed
class ResetpasswordState with _$ResetpasswordState {
  const factory ResetpasswordState({
    required String password,
    required String confirm,
    required bool isLoading,
    required bool isSuccess,
    required String failureMessage,
  }) = _ResetpasswordState;
  factory ResetpasswordState.initial() => ResetpasswordState(
        password: '',
        confirm: '',
        isLoading: false,
        isSuccess: false,
        failureMessage: '',
      );
}
