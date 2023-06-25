import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_git/Features/Home/wedgits/adding_note_bottom_sheet_form.dart';
import 'package:notes_app_git/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color noteColor = Colors.yellow;
  addNote(NoteModel noteModel) async {
    noteModel.color = noteColor.value;
    emit(AddNoteLoding());
    try {
      var box = Hive.box<NoteModel>("notes");
      await box.add(noteModel);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailure());
    }
  }
}
