import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/homeScreen.dart';
import 'package:todo/mode/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        title: 'ToDo',
        home: HomeScreen(),
      ),
    );
  }
}
