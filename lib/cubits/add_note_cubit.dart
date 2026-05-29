import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../constant.dart';
import '../models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess(note));
    } catch (error) {
      emit(AddNoteFailure(error.toString()));
    }
  }
}
