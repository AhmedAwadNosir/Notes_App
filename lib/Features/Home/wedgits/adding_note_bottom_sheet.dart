import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/featch_notes_cubit/featch_notes_cubit.dart';

import '../../../Cubits/add_note_cubit/add_note_cubit.dart';
import 'adding_note_bottom_sheet_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucess) {
          BlocProvider.of<FeatchNotesCubit>(context).featchNotes();
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoding ? true : false,
          child: Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child:const SingleChildScrollView(
            child:  AddNoteBottomSheetForm(),
          ),
          ),
        );
      },
    );
  }
}
