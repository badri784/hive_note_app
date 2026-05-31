import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../constant.dart';
import '../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
