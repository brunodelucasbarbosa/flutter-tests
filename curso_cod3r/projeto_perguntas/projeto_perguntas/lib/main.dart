import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'questao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "pergunta": "Qual é a sua cor favorita?",
      "respostas": ['Azul', 'Verde', 'Vermelho', 'Branco'],
    },
    {
      "pergunta": "Qual é o seu animal favorito?",
      "respostas": ['Cachorro', 'Gato', 'Leão', 'Águia'],
    },
    {
      "pergunta": "Qual é a sua comida favorita?",
      "respostas": ['Pizza', 'Lasanha', 'Macarrão', 'Feijoada'],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    void responder() {
      if (temPerguntaSelecionada)
        setState(() {
          _perguntaSelecionada++;
        });
    }

    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Header"),
        ),
        body: temPerguntaSelecionada
            ? Center(
                child: Column(
                  children: [
                    Questao(_perguntas[_perguntaSelecionada]['pergunta']),
                    ...respostas.map((e) => Resposta(e, responder)).toList(),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
