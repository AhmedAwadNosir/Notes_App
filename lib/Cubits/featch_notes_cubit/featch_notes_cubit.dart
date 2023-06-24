import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../Models/note_model.dart';

part 'featch_notes_state.dart';

class FeatchNotesCubit extends Cubit<FeatchNotesState> {
  FeatchNotesCubit() : super(FeatchNotesInitial());
  featchNotes() {
    emit(FeatchNotesLoding());
    try {
      var box = Hive.box<NoteModel>("notes");
      var notes = box.values.toList();
      emit(FeatchNotesSecess(notes));
    } catch (e) {
      emit(FeatchNotesFailur(e.toString()));
    }
  }
}
