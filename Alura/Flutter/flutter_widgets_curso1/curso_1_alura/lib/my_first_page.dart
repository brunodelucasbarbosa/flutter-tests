import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 75,
                height: 75,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 75,
                height: 75,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.lime,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            height: 30,
            width: 80,
            child: const Text(
              "Salve!",
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Arial'),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () => print("butao"), child: const Text("Salve!")),
        ],
      ),
    );
  }
}
