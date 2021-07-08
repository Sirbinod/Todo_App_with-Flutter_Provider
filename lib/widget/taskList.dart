import 'package:flutter/material.dart';
import 'package:todo/mode/taskData.dart';
import 'package:todo/widget/taskTile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkbosState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deletetask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
