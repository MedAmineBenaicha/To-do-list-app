import 'dart:collection';

import 'package:flutter/cupertino.dart';

import '../modules/task.dart';

class Data extends ChangeNotifier {
  List<Task> _tasks = [];
  String username = '';

  UnmodifiableListView<Task> getTasks() {
    return UnmodifiableListView(_tasks);
  }

  void setName(String userName) {
    username = userName;
    notifyListeners();
  }

  String getUserName() {
    return username;
  }

  void addTak(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void updateTaskStatus(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }
}
