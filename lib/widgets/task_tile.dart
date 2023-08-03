import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{

  final bool isDone;
  final String taskTitle;

  const TaskTile({super.key, required this.isDone, required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isDone, onChanged: (bool? value) {  },
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}

