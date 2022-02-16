import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/firebase_db_config/extension/collection.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as devtools show log;

extension Log on Object {
  ///thanks vandad :)
  void log() => devtools.log(toString());
}

mixin CrudRepos on GetxController {
  dynamic get object;
  String? get id => object.id;
  String get collection => instructor;

  CollectionReference<Object?> _instructionCollection() =>
      collection.collection;
  //short cast of doc
  Future<DocumentSnapshot<Object?>> get docById =>
      _instructionCollection().doc(object == null ? id : object.id).get();

  @useResult
  Future<dynamic> fetch() async {
    try {
      DocumentSnapshot result = await docById;
      if (result.exists) {
        //return data
        return object.fromJson(result.data());
      } else {
        throw '${object.runtimeType} not exist yet';
      }
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      'error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to fetch ${object.runtimeType} with id:${object.id}'
          .log();
      throw 'unknown error';
    }
  }

  Future<void> add() async {
    try {
      DocumentSnapshot result = await docById;

      ///find out whether exist
      if (result.exists) {
        'no command executed'.log();
        throw '${object.runtimeType} already exist';
      } else {
        //add data
        await result.reference.set(object.toMap);
        '${object.runtimeType} with ${object.id} was added successfully'.log();
      }
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      'error in: lib/model/repos/crud_repos.dart with: $e type ${e.runtimeType} when trying to add ${object.runtimeType}'
          .log();
      throw 'unknown error with ${e.runtimeType}';
    }
  }

  Future<void> delete() async {
    try {
      DocumentSnapshot result = await docById;

      ///check instructor if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
        '${object.runtimeType} with ${object.id} was deleted successfully'
            .log();
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      'error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to delete ${object.runtimeType}'
          .log();
      throw 'unknown error';
    }
  }

  Future<void> updateData() async {
    try {
      DocumentSnapshot result = await docById;

      ///check instructor if [isExist]
      if (result.exists) {
        //update data
        await result.reference.update(object.toMap);
        '${object.runtimeType} with ${object.id} was updated successfully'
            .log();
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      'error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to update ${object.runtimeType}'
          .log();
      throw 'unknown error';
    }
  }

  @useResult
  Future<bool> isExist({required String id}) async {
    try {
      DocumentSnapshot result = await docById;

      ///check course if [isExist]
      return result.exists;
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      'error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to check existence of ${object.runtimeType}'
          .log();
      throw 'unknown error';
    }
  }
}
