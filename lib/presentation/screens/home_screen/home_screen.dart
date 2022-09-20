import 'package:flutter/material.dart';
import 'package:workshop/presentation/grid_screens/events_grid_screen/events_gridscreen.dart';
import 'package:workshop/presentation/grid_screens/finals_grid_screen/finals_gridscreen.dart';
import 'package:workshop/presentation/grid_screens/lectures_grid_screen/lectures_gridscreen.dart';
import 'package:workshop/presentation/grid_screens/midterms_grid_screen/midterm_gridscreen.dart';
import 'package:workshop/presentation/grid_screens/notes_screen_screen/notes_gridscreen.dart';
import 'package:workshop/presentation/grid_screens/sections_grid_screen/sections_gridscreen.dart';
import 'package:workshop/presentation/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    List myList = [
      'lectures',
      'sections',
      'midterms',
      'finals',
      'events',
      'notes'
    ];
    List icons = [
      Icons.book,
      Icons.people,
      Icons.book,
      Icons.book,
      Icons.calendar_month,
      Icons.note_add_sharp
    ];
    List myGridList = const [
      LecturesGridScreen(),
      SectionsGridScreen(),
      MidtermGridScreen(),
      FinalsGridScreen(),
      EventsGridScreen(),
      NotesGridScreen()
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: myList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (100 / 90),
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => myGridList[index])),
              child: Card(
                elevation: 10, // the size of the shadow
                shadowColor: Colors.black,
                child: GridTile(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                            icon: Icon(
                              icons[index],
                              color: Colors.orange,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Center(
                          child: TextComponent(
                        text: myList[index],
                        color: Colors.orange,
                        size: 20,
                        weight: FontWeight.bold,
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
