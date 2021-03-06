import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdemo/widgets/custom_dialog.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

class SignInPage extends StatefulWidget {
  final bool waiting;
  final VoidCallback loginPage;
  final VoidCallback checkAuthState;
  final VoidCallback signInWithPin;
  final AuthState authState;

  static const signInButtonKey = Key('signInButtonKey');
  static const signInDetailKey = Key('signInDetailKey');
  static const signInTextKey = Key('signInTextKey');

  SignInPage(
      {Key key,
      this.waiting,
      this.loginPage,
      this.checkAuthState,
      this.signInWithPin,
      this.authState})
      : super(key: key);

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
                alignment: Alignment.topCenter,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 80.0, right: 0.0, bottom: 0.0),
                    child: Image.asset(
                      'images/logo.png',
                    ),
                  ),
                ),
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
                              'Sign in',
                              key: SignInPage.signInTextKey,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 8.0, right: 35.0, bottom: 4.0),
                            child: Text(
                              'Use your email single sign-on FD credentials to accces your account',
                              key: SignInPage.signInDetailKey,
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
                              left: 10.0, top: 8.0, right: 10.0, bottom: 0.0),
                          child: SizedBox(
                            width: double.maxFinite, // set width to maxFinite
                            child: RaisedButton(
                              key: SignInPage.signInButtonKey,
                              onPressed: widget.loginPage,
                              child: const Text('Sign In',
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
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 8.0, right: 0.0, bottom: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => CustomDialog(
                                  title: "What is FD?",
                                  description:
                                      "Flutter Demo will help you to use good examples of unit and widget tests.",
                                  buttonText: "Okay",
                                ),
                              );
                            },
                            child: const Text('What is FD',
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 16)),
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
