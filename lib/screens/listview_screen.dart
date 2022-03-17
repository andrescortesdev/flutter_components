import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final options = const [
    'opcion 1',
    'opcion 2',
    'opcion 3',
    'opcion 4',
    'opcion 5',
    'opcion 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view 1'),
        ),
        body: ListView(
          children: [
            ...options.map((option) => ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text(option),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
          ],
        ));
  }
}
