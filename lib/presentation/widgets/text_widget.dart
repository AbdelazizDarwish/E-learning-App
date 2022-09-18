import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  TextComponent(
      {Key? key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.decoration})
      : super(key: key);
  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          decoration: decoration),
    );
  }
}
