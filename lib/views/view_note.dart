import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_project/cubits/notes_cubit.dart';

import 'package:hive_project/views/widget/custom_app_bar.dart';
import 'package:hive_project/views/widget/custom_floating_action.dart';
import 'package:hive_project/views/widget/custom_list_view.dart';

class ViewNote extends StatefulWidget {
  const ViewNote({super.key});

  @override
  State<ViewNote> createState() => _ViewNoteState();
}

class _ViewNoteState extends State<ViewNote> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

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
