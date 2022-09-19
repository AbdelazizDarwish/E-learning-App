import 'package:flutter/material.dart';

class SectionsGridScreen extends StatefulWidget {
  const SectionsGridScreen({Key? key}) : super(key: key);

  @override
  State<SectionsGridScreen> createState() => _SectionsGridScreenState();
}

class _SectionsGridScreenState extends State<SectionsGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Sections')),
    );
  }
}
