import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is 1st"),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
