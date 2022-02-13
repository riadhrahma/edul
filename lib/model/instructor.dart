class Instructor {
  static const String _id = 'id';
  static const String _name = 'name';
  static const String _email = 'email';
  static const String _token = 'token';
  static const String _description = 'description';
  static const String _imageUrl = 'image_url';
  static const String _webSiteUrl = 'web_site_url';
  static const String _linkedinUrl = 'linkedin_url';

  final String id;
  final String name;
  final String email;
  final String token;
  final String description;
  final String imageUrl;
  final String webSiteUrl;
  final String linkedinUrl;

  Instructor(
      {required this.id,
      required this.name,
      required this.email,
      required this.token,
      required this.description,
      required this.imageUrl,
      required this.webSiteUrl,
      required this.linkedinUrl});

  Map<String, dynamic> get toMap => {
        _id: id,
        _name: name,
        _email: email,
        _token: token,
        _description: description,
        _imageUrl: imageUrl,
        _webSiteUrl: webSiteUrl,
        _linkedinUrl: linkedinUrl
      };
  factory Instructor.fromJson(json) {
    return Instructor(
        id: json[_id],
        name: json[_name],
        email: json[_email],
        token: json[_token],
        description: json[_description],
        imageUrl: json[_imageUrl],
        linkedinUrl: json[_linkedinUrl],
        webSiteUrl: json[_webSiteUrl]);
  }
}
