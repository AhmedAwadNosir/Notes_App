import 'package:flutter/material.dart';
import 'package:notes_app_git/Utils/app_colors.dart';

import '../wedgits/adding_note_bottom_sheet.dart';
import '../wedgits/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: AppColors.primaryColor,
            builder: (context) {
              return const AddNoteBottomSheet();
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
