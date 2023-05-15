import 'package:flutter/material.dart';
import '../wedgits/edit_note_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static const id = "edite view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
