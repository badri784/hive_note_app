import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_project/cubits/notes_cubit.dart';
import 'package:hive_project/models/note_model.dart';
import 'package:hive_project/views/edit_view.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 24,
            left: 16,
            right: 16,
          ),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Note is deleted')));
                  },
                  icon: const Icon(Icons.delete, color: Colors.black, size: 24),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.data,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
