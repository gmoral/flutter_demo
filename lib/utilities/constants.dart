import 'package:flutter/material.dart';

const kRed = Colors.red;
const kWhite = Colors.white;
const kBlack = Colors.black;

const kDeepPurple = Colors.deepPurple;
const kTeal = Colors.teal;

final kLogo = 'images/logo.png';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
