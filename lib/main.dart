import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: ListViewScreen(),
      initialRoute: 'homescreen',
      routes: {
        'listview': (BuildContext context) => ListViewScreen(),
        'otherscreen' : (BuildContext context) => OtherScreen(),
        'homescreen' : (BuildContext context) => HomeScreen()
      },
    );
  }
}
