import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTitle({this.taskTitle, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}