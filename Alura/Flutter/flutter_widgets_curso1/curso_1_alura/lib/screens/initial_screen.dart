import 'package:curso_1_alura/components/task.dart';
import 'package:curso_1_alura/data/task_inheirited.dart';
import 'package:curso_1_alura/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu Header")),
      body: ListView(
        children: TaskInherited.of(context)!.taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (newContext) => FormScreen(taskContext: context)));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}