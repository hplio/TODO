import 'package:flutter/material.dart';
import 'package:todo/module/taskproperties.dart';

class TaskDataObj extends ChangeNotifier {
  bool isDone = false;

  List<TaskProperties> task = [
  ];
  int get getNumberOfTask {
    return task.length;
  }

  void changeMark(int index, bool mark) {
    task[index].isDone = mark;
    notifyListeners();
  }

  void addTask(String newTask) {
    task.add(TaskProperties(taskString: newTask));
    notifyListeners();
  }

  void removeTask(int index) {
    task.removeAt(index);
    notifyListeners();
  }
}
