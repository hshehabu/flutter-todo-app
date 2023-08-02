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
      title: Text(
        widget.taskName,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        isDone: isDone,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isDone = checkboxState ?? true;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({super.key, required this.isDone, required this.toggleCheckboxState});

  final bool isDone;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isDone,
      onChanged: toggleCheckboxState,
    );
  }
}
