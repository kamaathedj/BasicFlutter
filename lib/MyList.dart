import 'package:flutter/material.dart';

class MList extends StatefulWidget {
  const MList(this.items, this.controller,{super.key});
  final List<String> items;
   final ScrollController controller ;
  @override
  State<MList> createState() => _MListState();
}

class _MListState extends State<MList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: widget.controller,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
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
