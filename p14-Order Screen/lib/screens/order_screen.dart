import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/orders_provider/orders.dart';
import 'package:simple_shop_app/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const id = '/OrdersScreen';
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.myOrders.length,
        itemBuilder: (context,index) => OrderItemTile(order: orders.myOrders[index],)
      ),
    );
  }
}
