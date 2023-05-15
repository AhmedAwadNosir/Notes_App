import 'package:flutter/material.dart';
class NoteModel {
  final String title;
  final String description;
  final String date;
  final Color color;

  NoteModel({
    required this.title,
    required this.description,
    required this.date,
    required this.color,
  });
}
