import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final TextEditingController _controller = TextEditingController();
  final Function addTask;

  AddTaskScreen(this.addTask);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                controller: _controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: 'Enter your task'
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  String taskName = _controller.text;
                  print(taskName);
                  if(taskName != '') {
                    addTask(taskName);
                  }
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
