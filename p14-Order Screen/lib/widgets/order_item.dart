// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_shop_app/Providers/orders_provider/orders.dart';

class OrderItemTile extends StatefulWidget {
  const OrderItemTile({Key? key, required this.order}) : super(key: key);

  final OrderItem order;

  @override
  State<OrderItemTile> createState() => _OrderItemTileState();
}

class _OrderItemTileState extends State<OrderItemTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('${widget.order.totalPrice} \$'),
            subtitle: Text('${widget.order.orderTime}'),
            trailing: IconButton(
              icon: isExpanded
                  ? Icon(
                      Icons.expand_less,
                    )
                  : Icon(
                      Icons.expand_more,
                    ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
          if (isExpanded)
            Container(
              height: widget.order.cartItems.length * 28,
              child: ListView(
                children: widget.order.cartItems.map((product) => Row(
                  children: [
                    Expanded(child: Text("${product.title}")),
                    Text("${product.qty}x"),
                    SizedBox(width: 10,),
                    Text("${product.price}"),
                  ],
                )).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
