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
          elevation: 0,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView.separated(
            itemBuilder:(context, index) => ListTile(
              title: Text(options[index]),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              leading: Icon(Icons.wine_bar_sharp),
              onTap: (){
                print(options[index]);
              } ,
            ) ,
            separatorBuilder:(context,index)=> const Divider(),
            itemCount: options.length));
  }
}
