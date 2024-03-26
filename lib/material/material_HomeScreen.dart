import 'package:client/mocks/notes.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MyHomePageMaterial extends StatefulWidget {
  final String label;

  const MyHomePageMaterial({super.key, required this.label});

  @override
  MyHomePageMaterialState createState() => MyHomePageMaterialState();
}
class MyHomePageMaterialState extends State<MyHomePageMaterial> {
  final Icon _addNoteIcon = const Icon(Symbols.add_notes, color: Colors.grey);
  @override
  Widget build(BuildContext context) => material();

  Widget material() => Scaffold(
    appBar: AppBar(
        title: Text(widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Symbols.more_vert_rounded),
              tooltip: 'Show Settings',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('This is a click on Settings')));
              }),
        ]),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(14),
              itemCount: notes.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(width: 1, color: Colors
                          .orangeAccent.withOpacity(0.5))),
                  child: ListTile(
                    title: Container(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          notes[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.grey.shade500,
                          ),
                        )),
                    subtitle: Container(
                      padding: const EdgeInsets.only(
                        right: 14,
                      ),
                      child: Text(
                        notes[index].content,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.grey.shade900,
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('This is a click on AddNote')));
      },
      child: _addNoteIcon,
    ),
  );
}