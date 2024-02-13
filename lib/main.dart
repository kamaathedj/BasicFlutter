import 'package:demo_app/MyList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static List<String> items = [
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
  void add() {
    items.add('mapera');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('my app')),
        body: Center(child: MList(items)),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('+'),
        ),
      ),
    );
  }
}
