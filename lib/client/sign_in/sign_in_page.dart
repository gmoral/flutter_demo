import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignInPage extends StatefulWidget {
  final bool waiting;
  final VoidCallback loginPage;

  SignInPage({Key key, this.waiting, this.loginPage}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: widget.loginPage,
                      child:
                          const Text('Sign In', style: TextStyle(fontSize: 20)),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      elevation: 5,
                    ),
                    RaisedButton(
                      onPressed: () {
                        /// TODO
                      },
                      child: const Text('What is Flutter Demo',
                          style: TextStyle(fontSize: 16)),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      elevation: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
