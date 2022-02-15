import 'package:edule/firebase_db_config/collections.dart';

import 'package:edule/model/instructor.dart';
import 'package:edule/model/repos/crud_repos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show debugPrint;
import 'package:get/get.dart';

class InstructorRepos extends GetxController with CrudRepos {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> createAccount(
      {required String password, required String email}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        return result.user!;
      } else {
        throw 'unknown error';
      }
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  Future<User> connect(
      {required String password, required String email}) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        return result.user!;
      } else {
        throw 'unknown error';
      }
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  @override
  Instructor object = Instructor();
  @override
  String id = '';
  @override
  String get collection => instructor;
}
