part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState({
    required TextEditingController fnameController,
    required String fname,
    required TextEditingController lnameController,
    required String lname,
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
        fnameController: TextEditingController(),
        fname: '',
        lnameController: TextEditingController(),
        lname: '',
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
