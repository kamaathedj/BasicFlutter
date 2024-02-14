import 'package:demo_app/MyList.dart';
import 'package:demo_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(
    ChangeNotifierProvider(
      create: (context) => Change(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  // final List<String> items = [
  //   'oranges',
  //   'ovacandos',
  //   'lemons',
  //   'mangoes',
  //   'Apples',
  //   'Watermelon',
  //   'banana',
  //   'passion fruits',
  //   'pomegranate'
  // ];

  final ScrollController controller = ScrollController();

  void add() {
    setState(() {
      // items.add('mapera');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.animateTo(controller.position.maxScrollExtent,
          duration: const Duration(microseconds: 500), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Change>(context, listen: false);
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('my app')),
        body: Center(child: MList(data.items, controller)),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {add()},
          child: Text('+'),
        ),
      ),
    );
  }
}
