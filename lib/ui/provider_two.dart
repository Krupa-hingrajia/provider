import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondNotifier with ChangeNotifier {
  double value = 0;

  Future<void> changeValueTwo(double newValue) async {
    value = newValue;
    value -= 1;
    notifyListeners();
  }
}
