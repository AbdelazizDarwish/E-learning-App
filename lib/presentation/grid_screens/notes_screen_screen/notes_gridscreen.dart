import 'package:flutter/material.dart';

class NotesGridScreen extends StatefulWidget {
  const NotesGridScreen({Key? key}) : super(key: key);

  @override
  State<NotesGridScreen> createState() => _NotesGridScreenState();
}

class _NotesGridScreenState extends State<NotesGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Notes')),
    );
  }
}
