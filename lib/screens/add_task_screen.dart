import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask(this.addTaskCallback);

  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
  dynamic taskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            ElevatedButton(
              onPressed:() {
                addTaskCallback(taskTitle);
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
