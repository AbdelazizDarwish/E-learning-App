import 'package:flutter/material.dart';
import 'package:workshop/presentation/grid_screens/lectures_grid_screen/add_notes.dart';

class LecturesGridScreen extends StatefulWidget {
  const LecturesGridScreen({Key? key}) : super(key: key);

  @override
  State<LecturesGridScreen> createState() => _LecturesGridScreenState();
}

class _LecturesGridScreenState extends State<LecturesGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Lectures')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNotes()));
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
