import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_project/cubits/add_note_cubit.dart';
import 'package:hive_project/cubits/notes_cubit.dart';
import 'package:hive_project/simpil_bloc_observr.dart';
import 'package:hive_project/views/view_note.dart';
import 'package:hive_project/models/note_model.dart';
import 'package:hive_project/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpilBlocObservr();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
        BlocProvider(create: (context) => NotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: ViewNote(),
      ),
    );
  }
}
