import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              // taskTitle: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              // isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              checkboxCallback: (bool? checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
          // itemCount: taskData.tasks.length,
          // itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
    );
  }
}
