import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1, required this.text, this.onChanged});
  final String hint;
  final int maxlines;
  final String text;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onChanged:onChanged ,
        maxLines: maxlines,
        initialValue: text,
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
