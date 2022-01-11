import 'dart:io';

void main() {
  var nome = stdin.readLineSync();
  if (nome == 'Bruno') {
    print('Hello ${nome}, its me!');
  } else {
    print('Not me');
  }

  var age = stdin.readLineSync();
  if (age == "22") {
    print('Hello ${nome}, my age is ${age}');
  } else {
    print('Age incorrect!');
  }
}
