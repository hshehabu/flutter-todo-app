import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key, required this.taskName,
  });
  final String taskName;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(widget.taskName),
      trailing:  Checkbox(value: isDone, onChanged: (value){
        setState(() {
          isDone = value!;
        });
      }),
    );
  }
}
