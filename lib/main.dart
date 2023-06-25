import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_git/Cubits/featch_notes_cubit/featch_notes_cubit.dart';
import 'package:notes_app_git/Features/Home/views/edit_note_view.dart';
import 'package:notes_app_git/Features/home/views/home_view.dart';
import 'package:notes_app_git/Models/note_model.dart';
import 'package:notes_app_git/Utils/custom_bloc_observer.dart';

import 'Utils/app_colors.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
 await Hive.openBox<NoteModel>("notes");
  Bloc.observer = CustomBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeatchNotesCubit()..featchNotes(),
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.primaryColor),
        routes: {
          HomeView.id: (context) => const HomeView(),
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}
