import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/firebase_db_config/extension/collection.dart';

import 'package:edule/model/repos/crud_repos.dart';
import 'package:flutter/material.dart' show debugPrint;

import '../course.dart';



class CourseRepos extends CrudRepos {
  // the main repository collection
  final _courseCollection = course.collection;
  //short cast of doc
  docById(String id) => _courseCollection.doc(id).get();

  @override
  Future<Course> fetch({required String id}) async {
    try {
      DocumentSnapshot result = await docById(id);
      //return data
      return Course.fromJson(result.data());
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

      ///check course if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
        debugPrint('deleted successfully');
      } else {
        throw 'course not exist';
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
    assert(constructor is Course);

    try {
      DocumentSnapshot result = await docById(constructor.id);

      ///check course if [isExist]
      if (result.exists) {
        //update data
        await result.reference.update(constructor.toMap);
        debugPrint('updated successfully');
      } else {
        throw 'course not exist';
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
    assert(constructor is Course);

    try {
      DocumentSnapshot result = await docById(constructor.id);

      ///check course if [isExist]
      if (result.exists) {
        throw 'course already exist';
      } else {
        //add data
        await result.reference.parent.add(constructor.toMap);
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

      ///check course if [isExist]
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
}
