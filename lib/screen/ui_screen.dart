import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/screen/taskbody.dart';
import 'taskadd_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/module/taskdataobj.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  SizedBox getHight() {
    return const SizedBox(
      height: 3.0,
    );
  }

  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataObj>(
      builder: (context, taskObj, child) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => const TaskAdd());
            },
            child: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 15, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.list,
                          color: Colors.lightBlueAccent,
                          size: 40.0,
                        ),
                      ),
                      getHight(),
                      const Text(
                        'Todo',
                        style: kStyleHeading_1,
                      ),
                      getHight(),
                      Text(
                        '${taskObj.getNumberOfTask} Tasks',
                        style: kStyleHeading_2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 15, left: 18),
                    width: double.infinity,
                    decoration: kConatinerDecoration,
                    child:const TaskBody(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
