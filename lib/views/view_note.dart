import 'package:flutter/material.dart';

import 'package:hive_project/views/widget/custom_app_bar.dart';
import 'package:hive_project/views/widget/custom_floating_action.dart';
import 'package:hive_project/views/widget/custom_list_view.dart';

class ViewNote extends StatelessWidget {
  const ViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingAction(),
      appBar: AppBar(
        title: Text('Notes'),
        actions: [CutomAppBar(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: const CustomListView(),
    );
  }
}
