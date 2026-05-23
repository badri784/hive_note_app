import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/body_edit_note_view.dart';
import 'package:hive_project/views/widget/custom_app_bar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        actions: [CutomAppBar(onPressed: () {}, icon: Icon(Icons.check))],
      ),
      body: BodyEdidNoteView(),
    );
  }
}
