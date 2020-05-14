import 'package:flutter/material.dart';
import 'package:flutterdemo/widgets/custom_drawer.dart';
import 'package:flutterdemo/widgets/toast.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onLogout;

  HomePage({Key key, this.onLogout}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _drawerKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Home', style: TextStyle(color: Colors.black)),
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _drawerKey.currentState.openEndDrawer();
                }),
          ],
        ),
        endDrawer: CustomDrawer(
          onSignOut: () {
            widget.onLogout();
          },
          onIconPressed: (item) {
            ToastUtil.show(
                ToastDecorator(
                  widget: Text("Feature $item['name] not implemented",
                      style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.grey,
                ),
                context,
                gravity: ToastGravity.bottom);
          },
        ),
        body: Stack(children: [
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.asset(
                  'images/logo.png',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
