import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_project/cubits/add_note_cubit.dart';
import 'package:hive_project/cubits/notes_cubit.dart';
import 'package:hive_project/views/widget/form_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            bottom: 16,
            top: 16,
          ),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
              if (state is AddNoteSuccess) {
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Note added successfully')),
                );
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(child: FormTextField()),
              );
            },
          ),
        ),
      ),
    );
  }
}
