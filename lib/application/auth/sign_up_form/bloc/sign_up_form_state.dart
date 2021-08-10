part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required String? firstname,
    required String? lastname,
    required String? phone,
    required String? email,
    required String? failuremessage, //when signup fails
    required bool isSubmitting,
    required bool isSuccess,
  }) = _SignUpFormState;

  //initial state
  factory SignUpFormState.initial() => SignUpFormState(
        firstname: '',
        lastname: '',
        phone: '',
        email: '',
        failuremessage: null,
        isSubmitting: false,
        isSuccess: false,
      );
}
