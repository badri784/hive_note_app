import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/add_note_button.dart';

class CustomFloatingAction extends StatelessWidget {
  const CustomFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: CircleBorder(),
      backgroundColor: Color(0xff53ebd6),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddNoteButton(),
          );
        },
        icon: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
