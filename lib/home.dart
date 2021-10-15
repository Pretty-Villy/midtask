import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Домашняя страница'),
          backgroundColor: Color(0xFF4C546C),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    Icons.exit_to_app
                ),
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFFE8E9E8),
      ),
    );
  }
}