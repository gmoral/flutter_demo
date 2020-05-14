import 'package:flutter/material.dart';
import 'package:flutterdemo/widgets/custom_icon.dart';

class CustomIconButton extends StatelessWidget {
  final CustomIcon customIcon;
  final Function onIconPressed;

  const CustomIconButton(
      {@required this.customIcon, @required this.onIconPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: customIcon,
      onPressed: onIconPressed,
    );
  }
}
