import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/text_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {

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
                if(taskTitle != null){
                  Provider.of<TaskData>(context , listen: false).addTask(taskTitle);
                }
              
                Navigator.pop(context);
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
