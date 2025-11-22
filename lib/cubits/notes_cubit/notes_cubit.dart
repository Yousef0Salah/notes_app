import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel> notes = [];
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(KNotesBox);
     notes = notesBox.values.toList();
      emit(NotesSuccess());

  }
}
