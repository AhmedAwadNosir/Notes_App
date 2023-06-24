import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Models/note_model.dart';
import '../../../Cubits/add_note_cubit/add_note_cubit.dart';
import 'color_picker.dart';
import 'custom_text_form_field.dart';

class AddNoteBottomSheetForm extends StatefulWidget {
  const AddNoteBottomSheetForm({
    super.key,
  });

  @override
  State<AddNoteBottomSheetForm> createState() => _AddNoteBottomSheetFormState();
}

String? title;
String? subTitle;
GlobalKey<FormState> formKey = GlobalKey();

class _AddNoteBottomSheetFormState extends State<AddNoteBottomSheetForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "learn Flutter",
            onSaved: (value) {
              title = value;
              log(title!);
            },
          ),
          CustomTextFormField(
            hint: "learn Flutter With tharwat samy",
            maxlines: 5,
            onSaved: (value) {
              subTitle = value;
              log(subTitle!);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColorPiker(color: Colors.white),
                ColorPiker(color: Colors.red),
                ColorPiker(color: Colors.lightBlue),
                ColorPiker(color: Colors.green),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    try {
                      BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                          title: title!,
                          description: subTitle!,
                          date: DateTime.now().toString(),
                          color: Colors.yellow.value));
                    } catch (e) {}
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: BlocBuilder<AddNoteCubit, AddNoteState>(
                      builder: (context, state) {
                        if (state is AddNoteLoding) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return const Text(
                            "Add",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          );
                        }
                      },
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
