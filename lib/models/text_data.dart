import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy bread', isDone: false),
    Task(name: 'buy egg', isDone: false),
    Task(name: 'buy tuna', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int getTaskLength() => _tasks.length;

  void addTask(String newTaskTitle){

    final newTask = Task(name: newTaskTitle, isDone: false);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
   task.toggleDone();
   notifyListeners();
  }
}
