import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNotifier with ChangeNotifier {
  double value = 0;
  String test = "hello";
  //default

  Future<void> changeValue(double newValue) async {
    value = newValue;
    value += 1;
    notifyListeners();
  }

  void textChange(String text) {
    test = text;
    notifyListeners();
  }
}
