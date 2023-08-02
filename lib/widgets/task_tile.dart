import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key, required this.taskName}) : super(key: key);
  final String taskName;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskName),
      trailing:  TaskCheckbox(isDone:isDone,),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({ required this.isDone});
final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isDone,
        onChanged: (value) {
        });
  }
}

