import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.title, this.isChecked, this.onPress});

  final bool isChecked;
  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: onPress,
      ),
    );
  }
}
