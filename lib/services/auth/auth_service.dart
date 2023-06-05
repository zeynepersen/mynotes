import 'package:mypersonelnotes/services/auth/auth_provider.dart';
import 'package:mypersonelnotes/services/auth/auth_user.dart';

class AuthSevice implements AuthProvider {
  final AuthProvider provider;
  const AuthSevice(this.provider);
  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      provider.createUser(
        email: email,
        password: password,
      );

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser?> logIn({
    required String email,
    required String password,
  }) =>
      provider.logIn(
        email: email,
        password: password,
      );

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();
}
