import 'package:flutter/material.dart';
import 'package:flutterdemo/utilities/constants.dart';
import 'package:flutterdemo/widgets/custom_icon.dart';
import 'package:flutterdemo/widgets/custom_text.dart';

class CustomDrawer extends StatefulWidget {
  final Function(String) onIconPressed;
  final Function onSignOut;

  const CustomDrawer({@required this.onIconPressed, this.onSignOut});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List _drawerItems = [
    {"icon": Icons.home, "name": "Home", "key": "_home"},
    {"icon": Icons.settings, "name": "Settings", "key": "_settings"},
    {"icon": Icons.help, "name": "Help", "key": "_help"},
    {"icon": Icons.lock, "name": "Sign Out", "key": "_signOut"},
  ];

  _iconColor(int i) {
    int _count = _drawerItems.length;
    if (_count - 1 == i) {
      return kWhite;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: CustomText(
              text: 'Jack',
            ),
            accountEmail: CustomText(
              text: 'Jack@demo.com',
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: AssetImage(kLogo),
              ),
            ),
            decoration: BoxDecoration(color: kDeepPurple),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _drawerItems.length,
            separatorBuilder: (_, index) {
              return (_drawerItems.length - 1 == index)
                  ? Divider(
                      color: kBlack,
                    )
                  : Container();
            },
            itemBuilder: (_, index) {
              Map _item = _drawerItems[index];
              return InkWell(
                onTap: () {
                  if (_item['key'] == '_signOut') {
                    widget.onSignOut();
                  } else {
                    widget.onIconPressed(_item['key']);
                  }
                },
                child: ListTile(
                  leading: CustomIcon(
                    iconData: _item['icon'],
                    color: _iconColor(index),
                  ),
                  title: CustomText(
                    text: _item['name'],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
