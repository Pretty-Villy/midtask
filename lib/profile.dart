import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Профиль'),
          backgroundColor: Color(0xFF4C546C),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.exit_to_app),
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFFE8E9E8),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.2),
                              offset: Offset(0, 5),
                              blurRadius: 2)
                        ]),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Имя',
                                style: TextStyle(
                                    color: Color(0xFF4C546C), fontSize: 18),
                              )),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF0F2F7),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              style: TextStyle(color: Color(0xFF130046), fontWeight: FontWeight.w500, fontSize: 16),
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(20),
                                  suffixText: 'Изменить',
                                  suffixStyle: TextStyle(color: Color(0xFF130046), fontWeight: FontWeight.bold, fontSize: 16)
                            )),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              child: Text(
                                'Телефон',
                                style: TextStyle(
                                    color: Color(0xFF4C546C), fontSize: 18),
                              )),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF0F2F7),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                                style: TextStyle(color: Color(0xFF130046), fontWeight: FontWeight.w700, fontSize: 18),
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(20),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 22, right: 22, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        primary: Color(0xFF4C546C),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),

                      ),
                      onPressed: () {},
                      child: const Text('История добавления товара', style: TextStyle(fontSize: 16),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
