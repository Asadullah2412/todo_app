import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Click plus button to add a task', false],
      ['click save to save task ', false],
      ['when task completed click checkbox', false],
      ['swipe from right to delete task', false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put('TOODLIST', toDoList);
  }
}
