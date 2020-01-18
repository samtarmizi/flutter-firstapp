import 'package:flutter/material.dart';
import 'package:hello_world/icon-widgets.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is MA title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is title'),
        ),
        body: IconWidget()
      ),
    );
  }
}