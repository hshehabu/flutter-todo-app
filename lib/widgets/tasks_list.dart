import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/models/text_data.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {
  TasksList(List<Task> tasks);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: ( context, taskData, child) {
        return  ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isDone: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.getTaskLength(),
        );
      },
    );
  }
}
