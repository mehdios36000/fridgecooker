import 'package:flutter/material.dart';
import 'package:fridgecooker/views/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fridge Cooker',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
