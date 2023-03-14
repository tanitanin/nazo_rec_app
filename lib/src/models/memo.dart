import 'package:cloud_firestore/cloud_firestore.dart';

class Memo {
  String title;
  String details;
  Timestamp createdDate;
  Timestamp? updatedDate;

  Memo({
    required this.title,
    required this.details,
    required this.createdDate,
    this.updatedDate,
  });
}
