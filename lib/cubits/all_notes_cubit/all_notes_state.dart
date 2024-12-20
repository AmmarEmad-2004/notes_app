part of 'all_notes_cubit.dart';

@immutable
sealed class AllNotesState {}

final class AllNotesInitial extends AllNotesState {}

final class AllNotesLoading extends AllNotesState {}

final class AllNotesSucess extends AllNotesState {
  final List<NoteModel> notes;

  AllNotesSucess(this.notes);
}

final class AllNotesFailuer extends AllNotesState {
  final String message;

  AllNotesFailuer(this.message);
}
