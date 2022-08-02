
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/cart_provider/cart_provider.dart';

class CartScreen extends StatelessWidget {
  static const id = '/CartScreen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children:[
          Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('Total'),

                  Spacer(),
                  Chip(label: Text("${cart.totalToPay.toString()} \$")),
                  TextButton(onPressed: (){}, child: Text("Order Now"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
