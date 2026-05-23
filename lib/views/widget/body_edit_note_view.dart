import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/cutom_text_feild.dart'
    show CutsomTextFeild;

class BodyEdidNoteView extends StatefulWidget {
  const BodyEdidNoteView({super.key});

  @override
  State<BodyEdidNoteView> createState() => _BodyEdidNoteViewState();
}

class _BodyEdidNoteViewState extends State<BodyEdidNoteView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          CutsomTextFeild(hintText: 'title', controller: titleController),
          SizedBox(height: 16),
          CutsomTextFeild(
            hintText: 'content',
            controller: contentController,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
