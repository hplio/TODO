import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/constants.dart';
import 'package:todo/module/taskdataobj.dart';

// ignore: must_be_immutable
class TaskAdd extends StatefulWidget {

  const TaskAdd({super.key});

  @override
  State<TaskAdd> createState() => _TaskAddState();
}

class _TaskAddState extends State<TaskAdd> {
  late String task;

  bool taskDone = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataObj>(
      builder: (context, taskObj, child) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text('New Task', style: kStyleBottomHeading),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (value) => task = value,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: kInputDecoration,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                  onPressed: () {
                    taskObj.addTask(task);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  // child:
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
