// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  botaoAction() {
    print("Clicou!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Clique no botão abaixo"),
          TextButton(
            child: Text("Clique aqui"),
            onPressed: botaoAction,
          )
        ],
      )),
    ));
  }
}


/*class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(height: 200, color: Colors.red),),              
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(height: 100, color: Colors.green),
              ),
              Expanded(
                child: Container(height: 100, color: Colors.blue),
              ),              
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(height: 100, color: Colors.grey),
              ),
              Expanded(
                child: Container(height: 100, color: Colors.black),
              ),
              Expanded(
                child: Container(height: 100, color: Colors.orange),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container(height: 100, color: Colors.pink,))
          ],)
        ],
      ),
    ));
  }
}
*/