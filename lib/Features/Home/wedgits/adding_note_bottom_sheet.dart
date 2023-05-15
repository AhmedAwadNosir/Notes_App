import 'package:flutter/material.dart';
import 'color_picker.dart';
import 'custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hint: "learn Flutter",
        ),
        const CustomTextFormField(
          hint: "learn Flutter With tharwat samy",
          maxlines: 5,
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
              onPressed: () {},
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
    );
  }
}
