import 'package:flutter/material.dart';
// import 'package:todo/screen/taskadd_screen.dart';
import 'package:todo/screen/ui_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/module/taskdataobj.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskDataObj(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
