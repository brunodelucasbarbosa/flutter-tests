import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(
    this._respostaTitulo,
    this.responder, {Key? key}) : super(key: key);


  final String _respostaTitulo;
  final void Function() responder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: responder,
        child: Text(_respostaTitulo),
      ),
    );
  }
}
