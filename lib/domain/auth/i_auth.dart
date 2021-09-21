import 'package:nipange/domain/user/user.dart';

abstract class IAuth {
  Future registerWithEmailAndPassword({required User user});

  Future signInWithEmailAndPassword({
    required String emailOrName,
    required String password,
  });

  Future<User?> signInWithGoogle(String device);

  Future<User?> signInWithTwitter();

  Future<User?> signInWithFacebook(String device);

  Future signInWithInstagram();

  Future signOut();

  Future<bool> isUsernameValid(String username);
  Future<bool> isPhoneValid(String phone);
  Future<bool> isEmailValid(String email);
  Future resetEmail(String email);
  Future changePassword({required String userId, required String password});
// current user or null frm db
  Future<User?> getCurrentUser();
  // current user or just user frm api
  Future<User> getUserApi(String id);
  Future verifyEmail({required String id, required String email});
  Future verifyPhone({required String id, required String phone});
}
