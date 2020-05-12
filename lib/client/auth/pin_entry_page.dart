import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PinEntryPage extends StatefulWidget {
  final bool waiting;
  final VoidCallback onPinEntry;
  final VoidCallback onPop;

  PinEntryPage({Key key, this.waiting, this.onPinEntry, this.onPop})
      : super(key: key);

  @override
  _PinEntryPageState createState() => _PinEntryPageState();
}

class _PinEntryPageState extends State<PinEntryPage> {
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
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 40.0, right: 0.0, bottom: 0.0),
                          child: GestureDetector(
                            onTap: () => widget.onPop(),
                            child: Image.asset(
                              'images/back_icon.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 60.0, right: 10.0, bottom: 0.0),
                          child: const Text('Create your passcode',
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
                              left: 10.0, top: 20.0, right: 10.0, bottom: 0.0),
                          child: const Text('Enter a six-digit passcode',
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
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
    ));
  }
}
