import 'package:flutter/material.dart';
import './login.dart';
import './register.dart';
import './profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'profile':(context) => MyProfile(),
    },
  ));
}


/*
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
              // fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: body(),
    ),
  ));
}

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.deepPurpleAccent.shade100,
        ),
      ],
    );
  }
}

*/
