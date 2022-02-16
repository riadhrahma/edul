import 'package:edule/firebase_db_config/collections.dart';

import 'package:edule/model/repos/crud_repos.dart';
import 'package:get/get.dart';

import '../review.dart';

class ReviewRepos extends GetxController with CrudRepos {
  @override
  Review? object;
  @override
  String? id;
  @override
  String get collection => review;
}
