import 'package:flutter/material.dart';
import 'package:student_follow_app/screens/root.dart';
import 'package:student_follow_app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Takip Programı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Root(
        auth: new Auth(),
      ),
    );
  }
}


