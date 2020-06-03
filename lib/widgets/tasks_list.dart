import 'package:ag/models/Task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_title.dart';
import 'package:ag/models/task_data.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          isChecked: context.watch<TaskData>().tasks[index].isDone,
          taskTitle: context.watch<TaskData>().tasks[index].name,
          checkboxCallback: (newValue) {
//            setState(() {
//              widget.tasks[index].toggleCheck();
//            });
          },
        );
      },
      itemCount: context.watch<TaskData>().tasks.length,
    );
  }
}
