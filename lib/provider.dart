import 'dart:collection';

import 'package:flutter/material.dart';


class Change extends ChangeNotifier {
  final List<String> _items = [
    'oranges',
    'ovacandos',
    'lemons',
    'mangoes',
    'Apples',
    'Watermelon',
    'banana',
    'passion fruits',
    'pomegranate'
  ];

  //UnmodifiableListView get items = List.UnmodifiableListView(_items) ;
  UnmodifiableListView<String> get items => UnmodifiableListView(_items);

  int get length => _items.length;

  void addElement(String fruit) {
    _items.add(fruit);
    notifyListeners();
  }

  void remove(int index) {
    _items.remove(index);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
