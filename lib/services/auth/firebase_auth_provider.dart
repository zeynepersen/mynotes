import 'package:firebase_core/firebase_core.dart';
import 'package:mypersonelnotes/services/auth/auth_user.dart';
import 'package:mypersonelnotes/services/auth/auth_provider.dart';
import 'package:mypersonelnotes/services/auth/auth_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, FirebaseAuthException;

class FirebaseAuthProvider implements AuthProvider {
  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  AuthUser? get currentUser {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return AuthUser.fromFireBase(user);
    } else {
      return null;
    }
  }

  @override
  Future<AuthUser?> logIn({required String email, required String password}) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<void> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }
}
