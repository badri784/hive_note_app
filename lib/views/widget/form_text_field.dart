import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_project/cubits/add_note_cubit.dart';
import 'package:hive_project/models/note_model.dart';
import 'package:hive_project/views/widget/cutom_text_feild.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CutsomTextFeild(
            hintText: 'title',
            controller: titleController,
            maxLines: 1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter title';
              }
              return null;
            },
            onsaved: (value) {
              titleController.text = value ?? '';
            },
          ),
          const SizedBox(height: 16),
          CutsomTextFeild(
            hintText: 'sub title',
            controller: subTitleController,
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter sub title';
              }
              return null;
            },
            onsaved: (value) {
              subTitleController.text = value ?? '';
            },
          ),
          const SizedBox(height: 75),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: titleController.text,
                      subTitle: subTitleController.text,
                      data: DateTime.now().toString(),
                      color: Color(Colors.blue.value).value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('please fill all the fields')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff53ebd6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Add note', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
