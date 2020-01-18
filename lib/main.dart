import 'package:flutter/material.dart';
import 'package:hello_world/icon-widgets.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  void testfunction(){
    print('Hello there!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is MA title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is title'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Open Alert'), 
        onPressed: (){
          print('Open Alert Box');
        },
      ),
    );
  }
}