
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/cart_provider/cart_provider.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({Key? key, required this.id, required this.title, required this.productId, required this.price, required this.qty}) : super(key: key);

  final String id;
  final String title;
  final String productId;
  final String price;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: ListTile(
        leading: Text(price.toString()),
        title:Text(title.toString()),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("x${qty.toString()}"),
            Text('\$${double.parse(price) * qty}')
          ],
        ),
        trailing:IconButton(
          icon: Icon(Icons.delete),
          onPressed: (){
            Provider.of<Cart>(context,listen: false).removeItem(productId);
          },
        ),
    ),
    );
  }
}
