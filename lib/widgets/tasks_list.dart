import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(taskName: 'Buy Milk',),
        TaskTile(taskName: 'Buy detergent',),
        TaskTile(taskName: 'BUy something',)
      ],
    );
  }
}

