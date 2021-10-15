import 'package:flutter/material.dart';
import 'package:midtask/home.dart';
import 'package:midtask/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index = 0;

  List<Widget> list = [
    Home(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: list[index],
        backgroundColor: Color(0xFFE8E9E8),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.widgets_outlined),
                backgroundColor: Color(0xFF4C546C),
                ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 120,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            clipBehavior: Clip.antiAlias,
            notchMargin: 5,
            child: BottomNavigationBar(
              currentIndex: index,
              onTap: (val){
                setState(() {
                  index = val;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 30, color: index == 0 ? Colors.blue: Color(0xFF4C546C)),
                  title: SizedBox.shrink()
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 30, color: index == 1 ? Colors.blue: Color(0xFF4C546C)),
                    title: SizedBox.shrink()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}