import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'all_notes_state.dart';

class AllNotesCubit extends Cubit<AllNotesState> {
  AllNotesCubit() : super(AllNotesInitial());

  fetchAllNotes() async {
    try {
      emit(AllNotesLoading());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(AllNotesSucess(notes));
    } catch (e) {
      emit(AllNotesFailuer(e.toString()));
    }
  }
}
