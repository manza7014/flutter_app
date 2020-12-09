import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/MyScaffold.dart';
import 'package:flutter_app/widgets/ShoppingList.dart';
import 'package:flutter_app/widgets/ShoppingListItem.dart';
import 'package:flutter_app/widgets/TutorialHome.dart';
import 'package:flutter_app/widgets/update_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var products = <Product>[
          Product(name: 'Eggs'),
          Product(name: 'Flour'),
          Product(name: 'Chocolate chips'),
        ];
    return MaterialApp(
      title: 'Startup Name Generator',
//      home:  SampleAppPage(),//更新文本
//      home: new MyScaffold(), //控件练习
      home: ShoppingList(
        products: products,
      ), //列表
    );
  }
}
