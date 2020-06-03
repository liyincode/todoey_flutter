import 'package:flutter/foundation.dart';

import 'Task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void add(value) {
    tasks.add(value);
    notifyListeners();
  }
}