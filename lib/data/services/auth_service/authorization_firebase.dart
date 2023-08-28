import 'package:currency_app/data/services/auth_service/authorization_service.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthorizationService)
class AuthorizationServiceFirebaseImpl implements AuthorizationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserData?> loginEmail({required String email, required String password}) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password,);
      User user = result.user!;
      final res = UserData(
        id: user.uid,
        email: user.email,
        username: user.displayName,
      );
      return res;
    } on FirebaseException catch (error) {
      logger.e(error);
      return null;
    }
  }

  @override
  Future<UserData?> loginGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      User user = _firebaseAuth.currentUser!;
      final res = UserData(
        id: user.uid,
        email: user.email,
        username: user.displayName,
      );
      return res;
    } on FirebaseException catch (error) {
      logger.e(error);
      return null;
    }
  }

  @override
  Future<UserData?> registerEmail({required String email, required String password, required String username}) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password,);
      User user = result.user!;
      await user.updateDisplayName(username);
      final res = UserData(
        id: user.uid,
        email: user.email,
        username: user.displayName,
      );
      return res;
    } on FirebaseException catch (error) {
      logger.e(error);
      return null;
    }
  }

  @override
  Stream<UserData?> get user {
    return _firebaseAuth.authStateChanges().map((User? user) {
      final res = user != null
          ? UserData(
        id: user.uid,
        email: user.email,
        username: user.displayName,
      )
          : null;
      return res;
    });
  }

}