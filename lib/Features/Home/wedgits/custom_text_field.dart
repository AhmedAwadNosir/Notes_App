import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        maxLines: maxlines,
        style: const TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
          hintText: hint,
          enabledBorder: buildBorder(Colors.white),
          focusedBorder: buildBorder(Colors.deepPurple),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? const Color(0xFF000000),
      ),
      borderRadius: BorderRadius.circular(18),
    );
  }
}
