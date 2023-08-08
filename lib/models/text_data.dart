import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy bread', isDone: false),
    Task(name: 'buy egg', isDone: false),
    Task(name: 'buy tuna', isDone: false),
  ];

  int getTaskLength() => tasks.length;
}
