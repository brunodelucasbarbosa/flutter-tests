import 'package:curso_1_alura/task.dart';
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
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(seconds: 1),
        child: ListView(
          children: const [
            Task(
                "Aprender Flutter",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png",
                4),
            Task(
                "Aprender Kotlin",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Kotlin_logo.svg/512px-Kotlin_logo.svg.png",
                3),
            Task(
                "Aprender Go",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Go_Logo_Blue.svg/1280px-Go_Logo_Blue.svg.png",
                4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setState(() {
              opacidade = !opacidade;
            });
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
