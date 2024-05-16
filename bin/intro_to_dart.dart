import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;

import 'add_two_numbers.dart';

void main() {
  // int counter = 10;
  // //  counter = 3.14;
  // double pi = 3.14;
  // pi = 10;
  // String name = "Ahmad";
  // bool isRight = false;
  // print(counter);

  // num raduis = 180.5;
  // raduis = 320;
  // int age = 25;
  // // age = 25.5;
  // dynamic classes = true;
  // classes = "Ahmad";
  // classes = 25;
  // classes = 2.1;
  // var degree = 59.5;
  // degree = 59;
  // print(degree);
  // const int phone = 123;
  // // phone = 222;
  // final int tempreture;

  // tempreture = 50;

  // List<String> names = ["Ahmad", "Mohammad", "Maya", "Israa", "Ahmad"];

  // print(names.elementAt(2));
  // print(names[2]);
  // Map<String, dynamic> user = {
  //   'name': 'Mohammad',
  //   'age': 30,
  //   // 1:'10',
  // };
  // print(user['age']);
  // Set numbers = {};
  // // Map userMamoud = {
  // //   'name' : 'Mahmoud',
  // //   'age' : 25,
  // // };
  // // print(names);
  // List<Map<String, dynamic>> users = [
  //   {
  //     'name': 'Mohammad',
  //     'age': 30,
  //   },
  //   {
  //     'name': 'Ahmad',
  //     'age': 25,
  //   },
  //   {
  //     'name': 'Maya',
  //     'age': 20,
  //   },
  // ];
  // print(users.elementAt(1).values.elementAt(0));
  // print(users[1]['name']);
  // Map<String, List<int>> studentDegree = {
  //   'Ahmad': [59, 90, 85],
  //   'Mahmoud': [59, 90, 85],
  // };
  // print(studentDegree.values);
  // // print(counter + age);
  // print(result);
  // // print(addTwoNumbersWithReturnInt(counter, age));
  // // addTwoNumbersWithReturnInt(secondNumber: age, firstNumber: classes);

  // // print(sumResult);
  // print(result);
  // addTwoNumbersWithoutReturnInt(counter, age);
  // print(addTwoNumberThenMultiplyThirdNumber(10, 30, 10));
  // print(addTwoNumberThenMultiplyThirdNumberWithNamedParams(
  //   firstNumber: 50,
  //   secondNumber: 50,
  // ));
  // int? price;
  // addTwoNumbersWithReturnInt(firstNumber: price ?? 10, secondNumber: age);

  // Dog spike = Dog(name: 'spkie', age: 10);
  // print(spike.name);
  // print(spike.age);
  // spike.bark();

  // Dog sharlo = Dog(name: 'sharlo', age: 15);
  // print(sharlo.name);
  // print(sharlo.age);
  // sharlo.bark();
  Animal animal = Animal(name: 'animal', age: 0);

  print(animal.name);
  print(animal.age);
  animal.sound();

  Dog spike = Dog(color: 'Brown', name: 'spike', age: 10);

  print(spike.name);
  print(spike.color);
  print(spike.age);
  spike.sound();

  Cat kitty = Cat(name: 'kitty', age: 5);
  print(kitty.name);
  print(kitty.age);
  kitty.sound();

  // Shape shape = Shape();
  Circle circle = Circle();
  circle.draw();

  Rectangle rectangle = Rectangle();
  rectangle.draw();
}

// int result = 0;
class Animal {
  String name;
  int age;
  Animal({required this.name, required this.age});

  void sound() {
    print("$name is making sound");
  }
}

class Dog extends Animal {
  String color;
  Dog({required this.color, required super.name, required super.age});

  // void bark() {
  //   print("$name is barking");
  // }
  @override
  void sound() {
    print("$name is barking");
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.age});

  // void meao() {
  //   print("$name is meao");
  // }

  @override
  void sound() {
    print("$name is meao");
  }
}

abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print("draw circle");
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print("draw Rectangle");
  }
}
