import 'package:flutter/material.dart';
import 'package:project2/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayo Vaksin!',
      theme: ThemeData(
     
        primarySwatch: Colors.brown,
      ),
      home: const LoginPage(),
    );
  }
}

