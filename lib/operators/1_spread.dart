import 'package:flutter/material.dart';

List<int> joinCollectionWithoutSpread() {
  final collection = [1, 2, 3];
  final collection2 = [4, 5, 6];
  collection.addAll(collection2);
  return collection;
}

List<int> joinCollectionWithSpread() {
  final collection = [1, 2, 3];
  final collection2 = [4, 5, 6];
  return [...collection, ...collection2];
}

class MyApp extends StatelessWidget {
  final showLoginUI = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Fake username field'),
        Text('Fake password field'),
        if (showLoginUI) ...[
          RaisedButton(child: Text('Login'), onPressed: () {}),
          FlatButton(child: Text('Forgot Password'), onPressed: () {}),
        ],
        if (!showLoginUI)
          RaisedButton(child: Text('Register'), onPressed: () {}),
      ],
    );
  }
}
