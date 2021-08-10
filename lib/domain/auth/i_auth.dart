import 'package:nipange/domain/user/user.dart';

abstract class IAuth {
  Future registerWithEmailAndPassword({required User user});

  Future signInWithEmailAndPassword({
    required String emailOrName,
    required String password,
  });

  Future signInWithGoogle();

  Future signInWithTwitter();

  Future signInWithFacebook();

  Future signInWithInstagram();

  Future signOut();

  Future<bool> isUsernameValid(String username);
  Future<bool> isPhoneValid(String phone);
  Future<bool> isEmailValid(String email);
  Future resetEmail(String email);

  Future<User?> getCurrentUser();
}
