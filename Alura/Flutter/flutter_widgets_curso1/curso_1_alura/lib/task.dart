import 'package:curso_1_alura/difficulty_task.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String imgURL;
  final int dificuldade;

  const Task(this.nome, this.imgURL, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.grey,
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 72,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black26),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                widget.imgURL,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 200,
                                  child: Text(
                                    widget.nome,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        overflow: TextOverflow.ellipsis),
                                  )),
                              DifficultyTask(
                                difficultyLevel: widget.dificuldade,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () => setState(() => nivel++),
                                  child: const Icon(Icons.arrow_drop_up)),
                              ElevatedButton(
                                  onPressed: () =>
                                      setState(() => nivel > 0 ? nivel-- : 0),
                                  child: const Icon(Icons.arrow_drop_down)),
                            ],
                          ),
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: LinearProgressIndicator(
                            color: Colors.amber,
                            value: widget.dificuldade > 0
                                ? (nivel / widget.dificuldade) / 10
                                : 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Nível: $nivel",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
