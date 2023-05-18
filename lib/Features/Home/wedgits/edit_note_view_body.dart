import 'package:flutter/material.dart';

import '../../wedgits/app_header.dart';
import 'color_picker.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            AppHeader(title: "Edit Note", icon: Icons.check),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              hint: "Learn flutter",
            ),
            CustomTextField(
              hint: "Learn Flutter With Tharwat samy",
              maxlines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
