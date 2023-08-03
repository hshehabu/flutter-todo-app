import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   final bool isDone;
  final String taskTitle;
 final Function (bool ?) checkboxCallback;
  const TaskTile({super.key, required this.isDone, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkboxCallback,
      ),
    );
  }
}
