import 'package:flutter/material.dart';
import 'package:flutter_application_1/homeController.dart';

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//     final size = MediaQuery.of(context).size;
//     final navigator = Navigator.of(context);
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(title: Text('Cabeçalho')),
//       body: Center(child: Text('Bruninho ${controller.value}')),
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             controller.increment();
//           }),
//     );
//   }
// }

// class HomeWidget extends StatefulWidget {
//   @override
//   State<HomeWidget> createState() {
//     return _HomePageState();
//   }
// }

// class _HomePageState extends State<HomeWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cabeçalho')),
      body: Center(child: Text('Bruninho ${counter}')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
