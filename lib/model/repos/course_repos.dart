import 'package:edule/firebase_db_config/collections.dart';

import 'package:edule/model/repos/crud_repos.dart';
import 'package:get/get.dart';

import '../course.dart';

class CourseRepos extends GetxController with CrudRepos {
  @override
  Course? object;
  @override
  String? id;
  @override
  String get collection => course;
}
