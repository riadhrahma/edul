import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/firebase_db_config/extension/collection.dart';
import 'package:edule/model/existence_exception.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show useResult;
import 'dart:developer' as devtools show log;

extension Log on Object {
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
    final now = DateTime.now();
    "⌛ fetching in progress".log();
    try {
      DocumentSnapshot result = await docById;
      if (result.exists) {
        //return data
        return object.fromJson(result.data());
      } else {
        throw ExistenceException(
            exceptionValue: '${object.runtimeType} not exist yet');
      }
    } on ExistenceException catch (e) {
      '🟡 ${object.runtimeType} with id: ${object.id} is not exist'.log();
      throw Exception(e.exception);
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to fetch ${object.runtimeType} with id:${object.id}'
          .log();
      throw e.toString();
    } finally {
      'fetching command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }

  Future<void> add() async {
    final now = DateTime.now();
    "⌛ adding of ${object.runtimeType} with id equal to ${object.id} in progress"
        .log();
    try {
      DocumentSnapshot result = await docById;

      ///find out whether exist
      if (result.exists) {
        throw ExistenceException(
            exceptionValue: '${object.runtimeType} already exist');
      } else {
        //add data
        await result.reference.set(object.toMap);

        '✅ ${object.runtimeType} with id: ${object.id} was added successfully '
            .log();
      }
    } on ExistenceException catch (e) {
      'no command executed'.log();
      '🟡 ${object.runtimeType} with id equal to ${object.id} is already exist'
          .log();
      throw e.exception;
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw e.message!;
    } catch (e) {
      '🔴 error in: repos/crud_repos.dart with: $e error runtimeType: ${e.runtimeType}, when trying to add ${object.runtimeType}'
          .log();
      throw e.toString();
    } finally {
      'adding command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }

  Future<void> delete() async {
    final now = DateTime.now();
    "⌛ deleting of ${object.runtimeType} with id equal to ${object.id} in progress"
        .log();
    try {
      DocumentSnapshot result = await docById;

      ///check instructor if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
        '✅ ${object.runtimeType} with ${object.id} was deleted successfully '
            .log();
      } else {
        throw ExistenceException(
            exceptionValue: '${object.runtimeType} not exist');
      }
    } on ExistenceException catch (e) {
      '🟡 ${object.runtimeType} with id: ${object.id} is not exist'.log();
      throw Exception(e.exception);
    } on FirebaseException catch (e) {
      "🔴 ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw Exception(e.message!);
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to delete ${object.runtimeType}'
          .log();
      throw Exception(e.toString());
    } finally {
      'deleting command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }

  Future<void> updateData() async {
    final now = DateTime.now();
    "⌛ updating of ${object.runtimeType} with id equal to ${object.id} in progress"
        .log();
    try {
      DocumentSnapshot result = await docById;

      if (result.exists) {
        //update data
        await result.reference.update(object.toMap);
        '✅ ${object.runtimeType} with ${object.id} was updated successfully'
            .log();
      } else {
        throw Exception('${object.runtimeType} not exist');
      }
    } on ExistenceException catch (e) {
      '🟡 ${object.runtimeType} with id: ${object.id} is not exist'.log();
      throw Exception(e.exception);
    } on FirebaseException catch (e) {
      "🔴  ${e.plugin.toUpperCase()} Message: ${e.message} code: ${e.code}"
          .log();
      throw Exception(e.message);
    } catch (e) {
      '🔴 error in: lib/model/repos/crud_repos.dart with: $e type${e.runtimeType} when trying to update ${object.runtimeType}'
          .log();
      throw Exception(e);
    } finally {
      'updating command is finished after ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
    }
  }

  @useResult
  Future<bool> isExist() async {
    final now = DateTime.now();
    "⌛ checking existence of ${object.runtimeType} with id equal to ${object.id} in progress"
        .log();
    try {
      DocumentSnapshot result = await docById;

      final exist = result.exists;
      '✅ ${object.runtimeType} with id: ${object.id} is $exist in ${DateTime.now().difference(now).inMilliseconds} MS'
          .log();
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
