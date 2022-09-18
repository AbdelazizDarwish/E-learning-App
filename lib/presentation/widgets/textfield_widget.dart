import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  TextFieldComponent(
      {Key? key, this.mycontroller, this.hint, this.label, this.suffixIcon})
      : super(key: key);

  TextEditingController? mycontroller = TextEditingController();
  String? hint;
  String? label;
  IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.orange,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.orange, width: 1.0),
        ),
      ),
    );
  }
}
