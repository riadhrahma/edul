import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/firebase_db_config/extension/collection.dart';
import 'package:edule/model/instructor.dart';
import 'package:edule/model/repos/crud_repos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show debugPrint;

class InstructorRepos extends CrudRepos {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // the main repository collection
  final _instructionCollection = instructor.collection;
  //short cast of doc
  docById(String id) => _instructionCollection.doc(id).get();

  @override
  Future<Instructor> fetch({required String id}) async {
    try {
      DocumentSnapshot result = await docById(id);
      //return data
      return Instructor.fromJson(result.data());
    } on FirebaseException catch (e) {
      debugPrint("message: ${e.message}");
      debugPrint("code: ${e.code}");
      debugPrint("plugin ${e.plugin}");
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  @override
  Future<void> delete({required String id}) async {
    try {
      DocumentSnapshot result = await docById(id);

      ///check instructor if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
        debugPrint('deleted successfully');
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      debugPrint("message: ${e.message}");
      debugPrint("code: ${e.code}");
      debugPrint("plugin ${e.plugin}");
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  @override
  Future<void> update({required constructor}) async {
    assert(constructor is Instructor);

    try {
      DocumentSnapshot result = await docById(constructor.id);

      ///check instructor if [isExist]
      if (result.exists) {
        //update data
        await result.reference.update(constructor.toMap);
        debugPrint('updated successfully');
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      debugPrint("message: ${e.message}");
      debugPrint("code: ${e.code}");
      debugPrint("plugin ${e.plugin}");
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  @override
  Future<void> add({required constructor}) async {
    assert(constructor is Instructor);
    Instructor instructor = (constructor as Instructor);
    try {
      DocumentSnapshot result = await docById(constructor.id);

      ///check instructor if [isExist]
      if (result.exists) {
        throw 'instructor already exist';
      } else {
        //add data
        await result.reference.parent.add(instructor.toMap);
        debugPrint('added successfully');
      }
    } on FirebaseException catch (e) {
      debugPrint("message: ${e.message}");
      debugPrint("code: ${e.code}");
      debugPrint("plugin ${e.plugin}");
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

  @override
  Future<bool> isExist({required String id}) async {
    try {
      DocumentSnapshot result = await docById(id);

      ///check instructor if [isExist]
      return result.exists;
    } on FirebaseException catch (e) {
      debugPrint("message: ${e.message}");
      debugPrint("code: ${e.code}");
      debugPrint("plugin ${e.plugin}");
      throw e.message!;
    } catch (e, s) {
      debugPrint("exception $e");
      debugPrint("stack $s");
      throw 'unknown error';
    }
  }

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
}
