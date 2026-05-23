import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/note_body.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NoteBody();
      },
    );
  }
}
