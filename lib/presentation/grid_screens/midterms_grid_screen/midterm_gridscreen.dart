import 'package:flutter/material.dart';

class MidtermGridScreen extends StatefulWidget {
  const MidtermGridScreen({Key? key}) : super(key: key);

  @override
  State<MidtermGridScreen> createState() => _MidtermGridScreenState();
}

class _MidtermGridScreenState extends State<MidtermGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('midterms')),
    );
  }
}
