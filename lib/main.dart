import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/taskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlueAccent,
      home: TaskScreen(),
    );
  }
}
