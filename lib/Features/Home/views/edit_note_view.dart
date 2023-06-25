import 'package:flutter/material.dart';
import 'package:notes_app_git/Models/note_model.dart';
import '../wedgits/edit_note_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
