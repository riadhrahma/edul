enum CourseLevel {
  secondary,
}

CourseLevel courseLevel({required String name}) =>
    CourseLevel.values.firstWhere((element) => element.name == name);
