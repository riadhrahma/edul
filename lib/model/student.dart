class Student {
  static const _id = 'id';
  static const _name = 'name';
  static const _email = 'email';
  static const _description = 'description';
  static const _imageUrl = 'image_url';

  final String id;
  final String name;
  final String email;
  final String description;
  final String imageUrl;

  Student(
      {required this.id,
      required this.name,
      required this.email,
      required this.description,
      required this.imageUrl});

  Map<String, dynamic> get toMap => {
        _id: id,
        _name: name,
        _email: email,
        _description: description,
        _imageUrl: imageUrl
      };
  factory Student.fromJson(json) {
    return Student(
        id: json[_id],
        name: json[_name],
        email: json[_email],
        description: json[_description],
        imageUrl: json[_imageUrl]);
  }
}
