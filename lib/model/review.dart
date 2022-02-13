import 'package:cloud_firestore/cloud_firestore.dart';

class Review {
  static const _id = 'id';
  static const _studentId = 'student_id';
  static const _courseId = 'course_id';
  static const _ratingValue = 'rating_value';
  static const _reviewText = 'review_text';
  static const _createdAt = 'created_at';

  final String id;
  final String studentId;
  final String courseId;
  final double ratingValue;
  final String reviewText;
  final DateTime createdAt;

  Review(
      {required this.id,
      required this.studentId,
      required this.courseId,
      required this.ratingValue,
      required this.reviewText,
      required this.createdAt});

  Map<String, dynamic> get toMap => {
        _id: id,
        _studentId: studentId,
        _courseId: courseId,
        _ratingValue: ratingValue,
        _reviewText: reviewText,
        _createdAt: createdAt
      };
  factory Review.fromJson(json) {
    return Review(
        id: json[_id],
        studentId: json[_studentId],
        courseId: json[_courseId],
        ratingValue: json[_ratingValue],
        reviewText: json[_reviewText],
        createdAt: (json[_createdAt] as Timestamp).toDate());
  }
}
