import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
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
        );
  }
}