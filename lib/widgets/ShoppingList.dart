import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/ShoppingListItem.dart';
class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList({Key key, this.products}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();
  

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sopping List'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: widget.products.map((Product product) {
              return ShoppingListItem(
                product: product,
                inCart: _shoppingCart.contains(product),
                onCartChanged: _handleCartChanged,
              );
            }).toList()));
  }
}
