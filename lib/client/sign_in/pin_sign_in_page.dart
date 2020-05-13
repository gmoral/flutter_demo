import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdemo/widgets/passcode.dart';

class PinSignInPage extends StatefulWidget {
  final bool waiting;
  final VoidCallback onNext;

  PinSignInPage({Key key, this.waiting, this.onNext}) : super(key: key);

  @override
  _PinSignInPageState createState() => _PinSignInPageState();
}

class _PinSignInPageState extends State<PinSignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0.0,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(0.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                top: 60.0,
                                right: 20.0,
                                bottom: 0.0),
                            child: const Text('Enter passcode',
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 20.0,
                                right: 10.0,
                                bottom: 0.0),
                            child: PasscodeTextField(
                              onTextChanged: (passcode) {
                                if (passcode.length == 6) {
                                  widget.onNext();
                                }
                              },
                              totalCharacters: 6,
                              borderColor: Colors.black,
                              passcodeType: PasscodeType.number,
                              obscureText: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
