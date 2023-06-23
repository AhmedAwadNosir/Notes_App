import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_git/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
   addNote(NoteModel noteModel) {
    emit(AddNoteLoding());
    try {
      var box = Hive.box<NoteModel>("notes");
      box.add(noteModel);
    } catch (e) {
      emit(AddNoteFailure());
    }
  }
}
