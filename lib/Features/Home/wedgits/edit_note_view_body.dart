import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/featch_notes_cubit/featch_notes_cubit.dart';
import 'package:notes_app_git/Features/Home/wedgits/color_picker.dart';
import 'package:notes_app_git/Features/Home/wedgits/color_picker_list_view.dart';
import 'package:notes_app_git/Models/note_model.dart';

import '../../wedgits/app_header.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            AppHeader(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                note.save();
                BlocProvider.of<FeatchNotesCubit>(context).featchNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              hint: "Learn flutter",
              text: note.title,
              onChanged: (value) {
                note.title = value;
              },
            ),
            CustomTextField(
              hint: "Learn Flutter With Tharwat samy",
              maxlines: 5,
              text: note.description,
              onChanged: (value) {
                note.description = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ColorPickerListView(),
            ),
          ],
        ),
      ),
    );
  }
}
