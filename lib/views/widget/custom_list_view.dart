import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_project/cubits/notes_cubit.dart';
import 'package:hive_project/models/note_model.dart';
import 'package:hive_project/views/widget/note_body.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteBody(note: notes[index]);
          },
        );
      },
    );
  }
}
