import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/delete_note_cubit/delete_note_cubit.dart';
import 'package:notes_app_git/Features/Home/wedgits/hom_view_body_bloc_lisner.dart';
import 'package:notes_app_git/Utils/app_colors.dart';

import '../../../Cubits/add_note_cubit/add_note_cubit.dart';
import '../wedgits/adding_note_bottom_sheet.dart';
import '../wedgits/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocProvider(create: (context) => DeleteNoteCubit(),child: HomeViewBodyBlocLisner(),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            backgroundColor: AppColors.primaryColor,
            builder: (context) {
              return BlocProvider(
                create: (context) => AddNoteCubit(),
                child: AddNoteBottomSheet(),
              );
            },
          );
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
    );
  }
}
