part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoding extends AddNoteState {}
class AddNoteSucess extends AddNoteState {}
class AddNoteFailure extends AddNoteState {
  
}
