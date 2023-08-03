import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy bread', isDone: false),
    Task(name: 'buy egg', isDone: false),
    Task(name: 'buy tuna', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index){
      return TaskTile(isDone: tasks[index].isDone, taskTitle: tasks[index].name);
    } , itemCount: tasks.length,);
  }
}
