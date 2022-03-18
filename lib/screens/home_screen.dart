import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/screens/listview_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text('nombre de ruta'),
            leading: Icon(Icons.wine_bar),
            onTap: (){
              //final route = MaterialPageRoute(builder:(context) => ListViewScreen(),);
              Navigator.pushNamed(context, 'otherscreen');
            },
          ),
          separatorBuilder: (_,__) => Divider(),
          itemCount: 10),
    );
  }

}