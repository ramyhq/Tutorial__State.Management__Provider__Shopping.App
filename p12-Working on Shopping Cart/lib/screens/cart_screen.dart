
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/cart_provider/cart_provider.dart';
import 'package:simple_shop_app/widgets/cart_item.dart';

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
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder:(context, index) =>CartItemTile(
                  id: cart.items.values.toList()[index].id,
                  title: cart.items.values.toList()[index].title,
                  price: cart.items.values.toList()[index].price,
                  qty: cart.items.values.toList()[index].qty,
                  productId: cart.items.keys.toList()[index],
                )
              ),
          ),
        ],
      ),
    );
  }
}
