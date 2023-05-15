import 'package:flutter/material.dart';

import '../../wedgits/app_header.dart';
import 'color_picker.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const AppHeader(title: "Edit Note", icon: Icons.check),
            const SizedBox(
              height: 40,
            ),
            const CustomTextField(
              hint: "Learn flutter",
            ),
            const CustomTextField(
              hint: "Learn Flutter With Tharwat samy",
              maxlines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                SizedBox(
                  height: 15,
                ),
                ColorPiker(
                  color: Colors.red,
                ),
                ColorPiker(
                  color: Colors.orange,
                ),
                ColorPiker(
                  color: Colors.blue,
                ),
                ColorPiker(
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
