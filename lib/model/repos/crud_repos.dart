import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/firebase_db_config/extension/collection.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

mixin CrudRepos on GetxController {
  dynamic get object;
  String get id => object.id;
  String get collection => instructor;

  _instructionCollection() => collection.collection;
  //short cast of doc
  docById(String id) => _instructionCollection().doc(id).get();
  @mustCallSuper
  Future<dynamic> fetch() async {
    try {
      DocumentSnapshot result = await docById(id);
      //return data
      return object.fromJson(result.data());
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'unknown error';
    }
  }

  @mustCallSuper
  Future<void> add() async {
    try {
      DocumentSnapshot result = await docById(object.id);

      ///check instructor if [isExist]
      if (result.exists) {
        throw 'instructor already exist';
      } else {
        //add data
        await result.reference.parent.add(object.toMap);
      }
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'unknown error';
    }
  }

  @mustCallSuper
  Future<void> delete() async {
    try {
      DocumentSnapshot result = await docById(id);

      ///check instructor if [isExist]
      if (result.exists) {
        //delete data
        await result.reference.delete();
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'unknown error';
    }
  }

  @mustCallSuper
  Future<void> updateData() async {
    try {
      DocumentSnapshot result = await docById(object.id);

      ///check instructor if [isExist]
      if (result.exists) {
        //update data
        await result.reference.update(object.toMap);
      } else {
        throw 'instructor not exist';
      }
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'unknown error';
    }
  }

  @mustCallSuper
  Future<bool> isExist({required String id}) async {
    try {
      DocumentSnapshot result = await docById(id);

      ///check course if [isExist]
      return result.exists;
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'unknown error';
    }
  }
}
