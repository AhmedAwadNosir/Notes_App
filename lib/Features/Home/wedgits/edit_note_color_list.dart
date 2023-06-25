import 'package:flutter/material.dart';
import 'package:notes_app_git/Features/Home/wedgits/color_picker.dart';
import 'package:notes_app_git/Models/note_model.dart';
import 'package:notes_app_git/Utils/app_colors.dart';

class EditNoteColorListView extends StatefulWidget {
  EditNoteColorListView({super.key, required this.note});
  NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = AppColors.kcolors.indexOf(Color(widget.note.color)) ;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppColors.kcolors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = AppColors.kcolors[index].value;
                setState(() {});
              },
              child: ColorPiker(
                bacgroundColor: AppColors.kcolors[index],
                isSelected: currentIndex == index,
              ));
        },
      ),
    );
  }
}
