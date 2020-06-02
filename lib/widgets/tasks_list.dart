import 'package:ag/models/Task.dart';
import 'package:flutter/material.dart';

import 'task_title.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (newValue) {
            setState(() {
              widget.tasks[index].toggleCheck();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
