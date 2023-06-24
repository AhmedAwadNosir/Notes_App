import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_git/Models/note_model.dart';

part 'delete_note_state.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState> {
  DeleteNoteCubit() : super(DeleteNoteInitial());
  deleteNote(NoteModel noteModel) {
    noteModel.delete();
    emit(DeleteNoteSucess());
  }
}
