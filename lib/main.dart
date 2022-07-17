import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Ask());
}

class Ask extends StatefulWidget {

  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int number = 1;

  void random() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me AnyThing'),
          backgroundColor: Colors.redAccent[400],
          elevation: 10.0,
          shadowColor: Colors.black,
        ),
        backgroundColor: Colors.redAccent[400],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          backgroundColor: Colors.redAccent[400],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.phone_android_outlined,
                  size: 36,
                ),
                label: 'Call',
                backgroundColor: Colors.white54),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email_outlined,
                  size: 36,
                ),
                label: 'Mail',
                backgroundColor: Colors.white38),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_link_outlined,
                  size: 36,
                ),
                label: 'LinkedIn',
                backgroundColor: Colors.white70),
          ],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    random();
                  },
                  child: Image.asset('images/ball$number.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






