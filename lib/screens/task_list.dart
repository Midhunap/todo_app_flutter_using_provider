import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      //consumer is used to refactor the Provider.of(context).tasks into taskData
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  longPressCallBack: () {
                    taskData.deleteTask(task);
                  },
                  checkBoxCallBack: (checkBoxState) {
                    taskData.updateTask(task);
                  });
            });
      },
    );
  }
}
