import 'package:curso_1_alura/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({Key? key, required this.child})
      : super(key: key, child: child);

  final Widget child;

  final List<Task> taskList = [
    Task(
        "Aprender Flutter",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png",
        4),
    Task(
        "Aprender Kotlin",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Kotlin_logo.svg/512px-Kotlin_logo.svg.png",
        3),
    Task(
        "Aprender Go",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Go_Logo_Blue.svg/1280px-Go_Logo_Blue.svg.png",
        4)
  ];

  void newTask(String name, String imageURL, int difficulty) {
    taskList.add(Task(name, imageURL, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
