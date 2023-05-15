import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxlines = 1,
    required this.onSaved,
  });
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is Required";
          }
          return null;
        },
        maxLines: maxlines,
        style: const TextStyle(fontSize: 20, color: Colors.white),
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
          hintText: hint,
          enabledBorder: buildBorder(Colors.white),
          focusedBorder: buildBorder(Colors.deepPurple),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
