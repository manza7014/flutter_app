import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Counter.dart';
import 'package:flutter_app/widgets/MyButton.dart';
import 'package:flutter_app/widgets/ShoppingListItem.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Title'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: ShoppingListItem(product: Product(name: "阿峰"),inCart: false,),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
