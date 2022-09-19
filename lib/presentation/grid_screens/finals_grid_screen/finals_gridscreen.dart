import 'package:flutter/material.dart';

class FinalsGridScreen extends StatefulWidget {
  const FinalsGridScreen({Key? key}) : super(key: key);

  @override
  State<FinalsGridScreen> createState() => _FinalsGridScreenState();
}

class _FinalsGridScreenState extends State<FinalsGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('finals')),
    );
  }
}
