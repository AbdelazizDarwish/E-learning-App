import 'package:flutter/material.dart';

class EventsGridScreen extends StatefulWidget {
  const EventsGridScreen({Key? key}) : super(key: key);

  @override
  State<EventsGridScreen> createState() => _EventsGridScreenState();
}

class _EventsGridScreenState extends State<EventsGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('events')),
    );
  }
}
