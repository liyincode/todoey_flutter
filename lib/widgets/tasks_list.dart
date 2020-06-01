import 'package:ag/models/Task.dart';
import 'package:flutter/material.dart';

import 'task_title.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (newValue) {
            setState(() {
              tasks[index].toggleCheck();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
