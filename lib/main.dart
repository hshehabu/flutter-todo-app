import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/text_data.dart';
import 'package:flutter_todo_app/screens/taskScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.lightBlueAccent,
        home: TaskScreen(),
      ),
    );
  }
}
