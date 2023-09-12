import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: myController,
          style: TextStyle(color: Colors.black, fontSize: 10),
          textAlign: TextAlign.center,
          // autofocus: true,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your task..',
          ),
        ),
        TextButton(
          onPressed: () {
            print(myController);
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
      ],
    );
  }
}
