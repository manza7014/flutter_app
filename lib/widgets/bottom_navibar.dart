import 'package:flutter/material.dart';

class NaviPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NaviPageState();
  }
}

class _NaviPageState extends State<NaviPage> {
  int _index =
      0; // Make sure this is outside build(), otherwise every setState will change the value back to 0
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              '$_index',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            backgroundColor: Colors.cyanAccent,
            onTap: (tappedItemIndex) => setState(() {
                  _index = tappedItemIndex;
                }),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.av_timer), title: Text('navBarItem1Text')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.flash_on), title: Text('navBarItem2Text'))
            ]));
  }
}
