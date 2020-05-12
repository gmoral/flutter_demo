import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdemo/utilities/constants.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';

class LoginPage extends StatefulWidget {
  final bool waiting;
  final LoginState loginState;
  final Function(String, String) onLogin;
  final VoidCallback homePage;

  LoginPage(
      {Key key, this.waiting, this.loginState, this.onLogin, this.homePage})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'Email',
                style: kLabelStyle,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: kBoxDecorationStyle,
                height: 60.0,
                child: TextField(
                  onChanged: (value) => _username = value,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    hintText: 'Enter your Email',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              Text(
                'Password',
                style: kLabelStyle,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: kBoxDecorationStyle,
                height: 60.0,
                child: TextField(
                  onChanged: (value) => _password = value,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () => widget.onLogin(_username, _password),
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color(0xFF527DAA),
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ])),
      ),
      if (widget.waiting) ModalBarrier(color: Colors.red.withOpacity(0.4)),
    ]);
  }
}
