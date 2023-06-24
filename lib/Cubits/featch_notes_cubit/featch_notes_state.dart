part of 'featch_notes_cubit.dart';

@immutable
abstract class FeatchNotesState {}

class FeatchNotesInitial extends FeatchNotesState {}

class FeatchNotesLoding extends FeatchNotesState {}

class FeatchNotesSecess extends FeatchNotesState {
  final List<NoteModel> notes;
  FeatchNotesSecess(this.notes);
}

class FeatchNotesFailur extends FeatchNotesState {
  final String errorMessage;
  FeatchNotesFailur(this.errorMessage);
}
