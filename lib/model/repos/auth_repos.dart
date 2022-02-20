import 'package:edule/model/existence_exception.dart';
import 'package:edule/model/repos/crud_repos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

mixin AuthRepos on GetxController {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> createAccount(
      {required String password, required String email}) async {
    final now = DateTime.now();
    "⌛ creating account with email/password in progress".log();
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        return result.user!;
      } else {
        throw ExistenceException(exceptionValue: 'no user value');
      }
    } on ExistenceException catch (e) {
      '🟡 no user value'.log();
      throw e.exception;
    } on FirebaseException catch (e) {
      '🔴 error in: lib/model/repos/auth_repos.dart with: $e type${e.runtimeType} when trying to create a user'
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/auth_repos.dart with: $e type${e.runtimeType} when trying to create a user'
          .log();
      throw e.toString();
    } finally {
      'creating account command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }

  Future<User?> connect(
      {required String password, required String email}) async {
    final now = DateTime.now();
    "⌛ connecting with email/password in progress".log();
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        return result.user!;
      } else {
        throw ExistenceException(exceptionValue: 'no user value');
      }
    } on ExistenceException catch (e) {
      '🟡 no user value'.log();
      throw e.exception;
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/auth_repos.dart with: $e type${e.runtimeType} when trying to connect a user'
          .log();
      throw e.toString();
    } finally {
      'creating account command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }
}
