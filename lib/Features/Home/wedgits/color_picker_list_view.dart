import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_git/Features/Home/wedgits/color_picker.dart';
import 'package:notes_app_git/Utils/app_colors.dart';

class ColorPickerListView extends StatefulWidget {
  ColorPickerListView({super.key});

  @override
  State<ColorPickerListView> createState() => _ColorPickerListViewState();
}

class _ColorPickerListViewState extends State<ColorPickerListView> {
  int currentIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    AppColors.kcolors[index];
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
