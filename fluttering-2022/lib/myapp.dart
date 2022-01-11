import 'package:flutter/material.dart';
import 'package:flutter_application_1/homeController.dart';

import 'homePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomeWidget()
        )
    );
  }
}