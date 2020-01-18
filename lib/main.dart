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
        body: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.photo_album),
                  Text('Album'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.photo_album),
                  Text('Album'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.photo_library),
                  Text('Album'),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}