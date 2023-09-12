import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_provider.dart';

class AddTask extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.lightBlueAccent),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                // obscureText: true,
                decoration: const InputDecoration(hintText: 'Enter your tasks'),
                controller: textController,
                // style: TextStyle(color: Colors.black, fontSize: 8.0),
                // autofocus: true,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 100,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(textController.text);
                    Navigator.pop(context);
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightBlueAccent)),
                  child: const Text(
                    'ADD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
