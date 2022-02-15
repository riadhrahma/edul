import 'package:edule/model/course_level.dart';
import 'package:edule/model/language.dart';

class Course {
  static const String _id = 'id';
  static const String _instructorId = 'instructor_id';
  static const String _duration = 'duration';
  static const String _lecturesCount = 'lectures_count';
  static const String _level = 'level';
  static const String _language = 'language';
  static const String _certificate = 'certificate';
  static const String _enrolledCount = 'enrolled_count';
  static const String _description = 'description';
  static const String _curriculum = 'curriculum';
  static const String _certification = 'certification';
  static const String _videoLink = 'video_link';
  static const String _isPublic = 'is_public';

  final String? id;
  final String? instructorId;
  final Duration? duration;
  final int? lecturesCount;
  final CourseLevel? level;
  final Language? language;
  final bool? certificate;
  final int? enrolledCount;
  final String? description;
  final String? curriculum;
  final String? certification;
  final String? videoLink;
  final bool? isPublic;

  Course(
      { this.id,
       this.instructorId,
       this.duration,
       this.lecturesCount,
       this.level,
       this.language,
       this.certificate,
       this.enrolledCount,
       this.description,
       this.curriculum,
       this.certification,
       this.videoLink,
       this.isPublic});

  Map<String, dynamic> get toMap => {
        _id: id,
        _instructorId: instructorId,
        _duration: duration!.inSeconds,
        _lecturesCount: lecturesCount,
        _level: level!.name,
        _language: language!.name,
        _certificate: certificate,
        _enrolledCount: enrolledCount,
        _description: description,
        _curriculum: curriculum,
        _certification: certification,
        _videoLink: videoLink,
        _isPublic: isPublic
      };

  factory Course.fromJson(json) {
    return Course(
        id: json[_id],
        instructorId: json[_instructorId],
        duration: Duration(seconds: json[_duration]),
        lecturesCount: json[_lecturesCount],
        level: courseLevel(name: json[_level]),
        language: getLanguage(name: json[_language]),
        certificate: json[_certification],
        enrolledCount: json[_enrolledCount],
        description: json[_description],
        curriculum: json[_curriculum],
        certification: json[_certification],
        videoLink: json[_videoLink],
        isPublic: json[_isPublic]);
  }
}
