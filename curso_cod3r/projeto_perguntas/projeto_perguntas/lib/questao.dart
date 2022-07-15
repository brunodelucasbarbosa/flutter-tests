import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto, {Key? key}) : super(key: key);

  final texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10 ),
      child: Text(
        texto,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
