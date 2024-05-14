import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;

import 'add_two_numbers.dart';

void main() {
  int counter = 10;
  //  counter = 3.14;
  double pi = 3.14;
  pi = 10;
  String name = "Ahmad";
  bool isRight = false;
  print(counter);

  num raduis = 180.5;
  raduis = 320;
  int age = 25;
  // age = 25.5;
  dynamic classes = true;
  classes = "Ahmad";
  classes = 25;
  classes = 2.1;
  var degree = 59.5;
  degree = 59;
  print(degree);
  const int phone = 123;
  // phone = 222;
  final int tempreture;

  tempreture = 50;

  List<String> names = ["Ahmad", "Mohammad", "Maya", "Israa", "Ahmad"];

  print(names.elementAt(2));
  print(names[2]);
  Map<String, dynamic> user = {
    'name': 'Mohammad',
    'age': 30,
    // 1:'10',
  };
  print(user['age']);
  Set numbers = {};
  // Map userMamoud = {
  //   'name' : 'Mahmoud',
  //   'age' : 25,
  // };
  // print(names);
  List<Map<String, dynamic>> users = [
    {
      'name': 'Mohammad',
      'age': 30,
    },
    {
      'name': 'Ahmad',
      'age': 25,
    },
    {
      'name': 'Maya',
      'age': 20,
    },
  ];
  print(users.elementAt(1).values.elementAt(0));
  print(users[1]['name']);
  Map<String, List<int>> studentDegree = {
    'Ahmad': [59, 90, 85],
    'Mahmoud': [59, 90, 85],
  };
  print(studentDegree.values);
  // print(counter + age);
  print(result);
  // print(addTwoNumbersWithReturnInt(counter, age));
  int sumResult = addTwoNumbersWithReturnInt(counter, age);
  print(sumResult);
  print(result);
  addTwoNumbersWithoutReturnInt(counter, age);
}

int result = 0;
