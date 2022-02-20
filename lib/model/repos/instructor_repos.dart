import 'package:edule/firebase_db_config/collections.dart';
import 'package:edule/model/instructor.dart';
import 'package:edule/model/repos/auth_repos.dart';
import 'package:edule/model/repos/crud_repos.dart';
import 'package:get/get.dart';

class InstructorRepos extends GetxController with CrudRepos, AuthRepos {
  @override
  Instructor? object;
  @override
  String? id;
  @override
  String get collection => instructor;
}
