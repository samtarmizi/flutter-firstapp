import 'package:flutter/material.dart';
 
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
        body: Center(
          child: Container(
            child: Image.asset('images/example.jpeg'),
          ),
        ),
      ),
    );
  }
}