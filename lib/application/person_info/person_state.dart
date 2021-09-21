part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState({
    required TextEditingController phoneController,
    required String phone,
    required TextEditingController usernameController,
    required String username,
    required TextEditingController emailController,
    required String email,
    required String id,
    required bool isSubmit,
    required bool isSuccess,
    required bool saved,
    required String failure,
  }) = _PersonState;
  factory PersonState.initial() => PersonState(
        phoneController: TextEditingController(),
        phone: '',
        usernameController: TextEditingController(),
        username: '',
        emailController: TextEditingController(),
        email: '',
        id: '',
        isSubmit: false,
        isSuccess: false,
        saved: true,
        failure: '',
      );
}
