import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PinIntroPage extends StatefulWidget {
  final bool waiting;
  final VoidCallback createPinPage;
  final VoidCallback signOutPage;

  PinIntroPage({Key key, this.waiting, this.createPinPage, this.signOutPage})
      : super(key: key);

  @override
  _PinIntroPageState createState() => _PinIntroPageState();
}

class _PinIntroPageState extends State<PinIntroPage> {
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
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 60.0, right: 10.0, bottom: 0.0),
                            child: GestureDetector(
                              onTap: widget.signOutPage,
                              child: const Text('Sign out',
                                  style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0,
                                  top: 20.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Image.asset(
                                'images/logo.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0.0,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(0.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 0.0, right: 40.0, bottom: 0.0),
                            child: Text(
                              'Welcome,',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 0.0, right: 40.0, bottom: 0.0),
                            child: Text(
                              'Jack!',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                top: 16.0,
                                right: 35.0,
                                bottom: 4.0),
                            child: Text(
                              'To begin using your account we will set up a six-digit passcode now',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 8.0, right: 35.0, bottom: 4.0),
                            child: Text(
                              'You will use this passcode to quickly and securely access the application',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 8.0, right: 10.0, bottom: 20.0),
                          child: SizedBox(
                            width: double.maxFinite, // set width to maxFinite
                            child: RaisedButton(
                              onPressed: () {
                                print('open create pin page');
                              },
                              child: const Text('Create Passcode',
                                  style: TextStyle(fontSize: 20)),
                              color: Colors.deepPurple,
                              textColor: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blue,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ], // children
              ),
            ), // here
          ],
        ),
      ),
    );
  }
}
