import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_git/Features/Home/views/edit_note_view.dart';
import 'package:notes_app_git/Features/home/views/home_view.dart';
import 'package:notes_app_git/Models/note_model.dart';

import 'Utils/app_colors.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Hive.openBox<NoteModel>("notes");

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, scaffoldBackgroundColor: AppColors.primaryColor),
      routes: {
        HomeView.id: (context) => const HomeView(),
        EditView.id: (context) => const EditView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
