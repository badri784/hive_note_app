import 'package:flutter/material.dart';
import 'package:hive_project/views/widget/custom_list_view.dart';

class ViewNote extends StatelessWidget {
  const ViewNote({super.key});

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
      body: CustomListView(),
    );
  }
}
