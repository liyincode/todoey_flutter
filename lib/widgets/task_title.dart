
import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Buy Milk',
      ),
      trailing: Checkbox(
        onChanged: (bool value) {},
        value: false,
      ),
    );
  }
}
