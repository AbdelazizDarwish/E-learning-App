import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/widgets/text_widget.dart';
import 'package:workshop/presentation/widgets/textfield_widget.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          children: [
            Center(
              child: TextComponent(
                text: 'Add Note',
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            TextFieldComponent(
              hint: 'Enter Title',
              label: 'Title',
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 20.h,
              child: TextFieldComponent(
                maxlines: 20,
                hint: 'Description',
                label: 'Description',
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 30.w,
                height: 8.h,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: TextComponent(
                    text: 'Add',
                    size: 25,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
