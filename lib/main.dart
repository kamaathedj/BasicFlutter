import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('my app')),
        body: Center(
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text('title'),
              subtitle: Text('This is a subtitle'),
            );
          }),
        ),
      ),
    );
  }
}
