import 'package:flutter/material.dart';

class Fish with ChangeNotifier {
  Fish({required this.name, required this.number, required this.size});

  final String name;
  int number;
  final String size;

  void changeFishNumber() {
    number++;
    notifyListeners();
  }
}

class SeaFish with ChangeNotifier {
  SeaFish({required this.name, required this.number, required this.size});

  final String name;
  int number;
  final String size;

  void changeSeaFishNumber() {
    number++;
    notifyListeners();
  }
}
