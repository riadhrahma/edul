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
    "⌛ fetching in progress".log();
    try {
      DocumentSnapshot result = await docById;
      if (result.exists) {
        //return data
        return object.fromJson(result.data());
      } else {
        '🎭 ${object.runtimeType} with id equal to ${object.id} is not exist'
            .log();
        throw '${object.runtimeType} not exist yet';
      }
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to fetch ${object.runtimeType} with id:${object.id}'
          .log();
      rethrow;
    }
  }

  Future<void> add() async {
    "⌛ adding in progress".log();
    try {
      DocumentSnapshot result = await docById;

      ///find out whether exist
      if (result.exists) {
        'no command executed'.log();
        '🎭 ${object.runtimeType} with id equal to ${object.id} is already exist'
            .log();
        throw '${object.runtimeType} already exist';
      } else {
        //add data
        await result.reference.set(object.toMap);
        '✅ ${object.runtimeType} with ${object.id} was added successfully'
            .log();
      }
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: repos/crud_repos.dart with: $e error runtimeType: ${e.runtimeType}, when trying to add ${object.runtimeType}'
          .log();
      rethrow;
    }
  }

  Future<void> delete() async {
    "⌛ deleting in progress".log();
    try {
      DocumentSnapshot result = await docById;

      ///check instructor if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
        '✅ ${object.runtimeType} with ${object.id} was deleted successfully'
            .log();
      } else {
        '🎭 ${object.runtimeType} with id equal to ${object.id} is not exist'
            .log();
        throw '${object.runtimeType} not exist';
      }
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to delete ${object.runtimeType}'
          .log();
      rethrow;
    }
  }

  Future<void> updateData() async {
    "⌛ updating in progress".log();
    try {
      DocumentSnapshot result = await docById;

      if (result.exists) {
        //update data
        await result.reference.update(object.toMap);
        '✅ ${object.runtimeType} with ${object.id} was updated successfully'
            .log();
      } else {
        '🎭 ${object.runtimeType} with id equal to ${object.id} is not exist'
            .log();
        throw '${object.runtimeType} not exist';
      }
    } on FirebaseException catch (e) {
      "${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}".log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to update ${object.runtimeType}'
          .log();
      rethrow;
    }
  }

  @useResult
  Future<bool> isExist({required String id}) async {
    "⌛ checking existence in progress".log();
    try {
      DocumentSnapshot result = await docById;

      final exist = result.exists;
      '✅ ${object.runtimeType} with ${object.id} is $exist'.log();
      return exist;
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to check existence of ${object.runtimeType}'
          .log();
      rethrow;
    }
  }
}
