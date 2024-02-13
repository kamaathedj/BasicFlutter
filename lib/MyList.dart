import 'package:flutter/material.dart';

class MList extends StatefulWidget {
  const MList(List<String> items, {super.key});

  @override
  State<MList> createState() => _MListState();
}

class _MListState extends State<MList> {
  late ScrollController controller;
  List<String> items = items;
  void animate() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.animateTo(controller.position.maxScrollExtent,
          duration: Duration(microseconds: 500), curve: Curves.bounceIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: ScrollController(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            onTap: () => SnackBar(
              key: Key('nana12'),
              content: Text('tapped'),
              duration: Durations.long4,
            ),
            textColor: index % 2 == 0
                ? Color.fromARGB(255, 20, 145, 51)
                : Color.fromARGB(255, 182, 28, 19),
            leading: CircleAvatar(
              child: Text('F'),
            ),
            title: Text(item),
            subtitle: Text('This is a fruit'),
          );
        });
  }
}
