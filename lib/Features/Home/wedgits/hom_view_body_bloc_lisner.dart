import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/delete_note_cubit/delete_note_cubit.dart';
import 'package:notes_app_git/Cubits/featch_notes_cubit/featch_notes_cubit.dart';
import 'package:notes_app_git/Features/Home/wedgits/home_view_body.dart';

class HomeViewBodyBlocLisner extends StatelessWidget {
  const HomeViewBodyBlocLisner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteNoteCubit, DeleteNoteState>(
      listener: (context, state) {
        if (state is DeleteNoteSucess) {
          BlocProvider.of<FeatchNotesCubit>(context).featchNotes();
        }
      },
        child: HomeViewBody(),
    );
  }
}
