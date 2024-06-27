// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter;
  CounterProvider({
    required this.counter,
  });

  void increament() {
    counter++;
    notifyListeners();
  }

  void decreament() {
    if (counter > 0) {
      counter--;
      notifyListeners();
    }
  }
}
