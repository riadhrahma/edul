class CourseField {
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _createdAt = 'created_at';

  final String id;
  final String name;
  final String createdAt;

  CourseField({required this.id, required this.name, required this.createdAt});

  Map<String, dynamic> get toMap =>
      {_id: id, _name: name, _createdAt: createdAt};

  factory CourseField.froJson(json) {
    return CourseField(
        id: json[_id], name: json[_name], createdAt: json[_createdAt]);
  }
}
