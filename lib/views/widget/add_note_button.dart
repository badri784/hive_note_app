import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/cutom_text_feild.dart';

class AddNoteButton extends StatefulWidget {
  const AddNoteButton({super.key});

  @override
  State<AddNoteButton> createState() => _AddNoteButtonState();
}

class _AddNoteButtonState extends State<AddNoteButton> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            bottom: 16,
            top: 16,
          ),
          child: Column(
            children: [
              CutsomTextFeild(
                hintText: 'title',
                controller: titleController,
                maxLines: 1,
              ),
              const SizedBox(height: 16),
              CutsomTextFeild(
                hintText: 'sub title',
                controller: subTitleController,
                maxLines: 5,
              ),
              const SizedBox(height: 75),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53ebd6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Add note',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
