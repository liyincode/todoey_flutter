import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function newTaskTitleCallback;
  AddTaskScreen(this.newTaskTitleCallback);

  @override
  Widget build(BuildContext context) {
  String newTaskTitle;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          FlatButton(
            onPressed: () {
              newTaskTitleCallback(newTaskTitle);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}
