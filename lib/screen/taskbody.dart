import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/module/taskdataobj.dart';

class TaskBody extends StatelessWidget {
  const TaskBody({
    super.key,
  });

  static bool checking = true;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataObj>(
      builder: (context, taskObj, child) {
        return ListView.builder(
            itemCount: taskObj.getNumberOfTask,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  taskObj.task[index].taskString,
                  style: TextStyle(
                    decoration: taskObj.task[index].isDone
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                onLongPress: () {
                  taskObj.removeTask(index);
                },
                trailing: Checkbox(
                    activeColor: Colors.lightBlueAccent,
                    value: taskObj.task[index].isDone,
                    onChanged: (value) {
                      taskObj.changeMark(index,value!);
                    }),
              );
            });
      },
    );
  }
}
