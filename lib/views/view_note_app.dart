import 'package:flutter/material.dart';

class ViewNoteApp extends StatelessWidget {
  const ViewNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ),
          ),
        ],
      ),
    );
  }
}
