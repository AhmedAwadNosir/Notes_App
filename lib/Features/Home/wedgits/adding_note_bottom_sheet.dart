import 'dart:developer';

import 'package:flutter/material.dart';
import 'color_picker.dart';
import 'custom_text_form_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

String? title;
String? subTitle;
GlobalKey<FormState> formKey = GlobalKey();

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Padding(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}