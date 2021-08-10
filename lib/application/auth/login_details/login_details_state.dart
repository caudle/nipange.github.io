part of 'login_details_bloc.dart';

@freezed
class LoginDetailsState with _$LoginDetailsState {
  const factory LoginDetailsState({
    required String username,
    required String password,
    required String confirmPassword,
    required String failuremessage, //when signup fails
    required bool isSubmitting,
    required bool isSuccess,
  }) = _LoginDetailsState;
  factory LoginDetailsState.initial() => LoginDetailsState(
        username: '',
        password: '',
        confirmPassword: '',
        failuremessage: '',
        isSubmitting: false,
        isSuccess: false,
      );
}
