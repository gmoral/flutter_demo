import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onLogout;

  HomePage({Key key, this.onLogout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Home')),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: onLogout,
                child: const Text('Logout', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5,
              ),
            )));
  }
}
