
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/product_provider/ProductsPrvider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const id = '/ProductDetailsScreen';
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments as String;
    final ourProduct = Provider.of<Products>(context,listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
    body: Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          child: Image.asset(ourProduct.image,
            fit: BoxFit.cover,),
        ),
        SizedBox(height: 20,),
        Text("\$ ${ourProduct.price}",style: TextStyle(color: Colors.grey,fontSize: 20),),
        SizedBox(height: 20,),
        Text("${ourProduct.description}"),
      ],
    ),
    );
  }
}
