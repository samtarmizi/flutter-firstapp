import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            HomePageAndroid(),
            HomePageIOS(),
            SnackBarDemo(),
          ],
        )
        
      ),
    );
  }
}

class HomePageIOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      onPressed: () {
        showDialog(
          context: context,
          // return object of type AlertDialog
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Column(
              children: <Widget>[
                Text("CupertinoAlertDialog"),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
            content: Text("An iOS-style alert dialog."),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"))
            ],
          ),
        );
      },
      child: Text('Show Cupertino AlertDialog'),
    ));
  }
}

// Home for Android
class HomePageAndroid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type AlertDialog
              return AlertDialog(
                title: new Text("AlertDialog"),
                content: new Text("Creates an alert dialog."),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new FlatButton(
                    child: new Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Text('Show AlertDialog'),
      ),
    );
  }
}

class SnackBarDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show Snackbar'),
        onPressed: (){
          final snackbar = SnackBar(
            content: Text('Hi'),
            action: SnackBarAction(
              label: '>',
              onPressed: (){
                // code here
                print('Close Snackbar');
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}