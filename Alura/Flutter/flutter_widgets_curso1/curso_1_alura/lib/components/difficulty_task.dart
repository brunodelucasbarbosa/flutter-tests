import 'package:flutter/material.dart';

class DifficultyTask extends StatelessWidget {
  final int difficultyLevel;

  const DifficultyTask({
    Key? key,
    required this.difficultyLevel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 15,
            color: difficultyLevel >= 1 ? Colors.blue : Colors.blue[200]),
        Icon(Icons.star,
            size: 15,
            color: difficultyLevel >= 2 ? Colors.blue : Colors.blue[200]),
        Icon(Icons.star,
            size: 15,
            color: difficultyLevel >= 3 ? Colors.blue : Colors.blue[200]),
        Icon(Icons.star,
            size: 15,
            color: difficultyLevel >= 4 ? Colors.blue : Colors.blue[200]),
        Icon(Icons.star,
            size: 15,
            color: difficultyLevel >= 5 ? Colors.blue : Colors.blue[200]),
      ],
    );
  }
}
