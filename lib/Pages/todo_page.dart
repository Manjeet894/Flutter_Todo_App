import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController mycontroller = TextEditingController();

  String greetingMsg = "";

  void greetUser() {
    setState(() {
      greetingMsg = "Hello, " + mycontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMsg,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type your name..."),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("Tap")),
            ],
          ),
        ),
      ),
    );
  }
}
