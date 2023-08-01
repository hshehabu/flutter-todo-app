import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

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

