// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/ProductsPrvider.dart';
import 'package:simple_shop_app/Providers/product.dart';
import '../widgets/GridProductItem.dart';

class MainShoppingScreen extends StatelessWidget {
  static const id = '/MainShoppingScreen';

  MainShoppingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Phone Shop"),
        ),
        body: ProductsGrid(),),);
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDate = Provider.of<Products>(context);
    final availProducts = productDate.availProducts;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: availProducts.length,
      itemBuilder: (contex, index) {
        return ChangeNotifierProvider<Product>(
          create: (BuildContext context) => availProducts[index],
          child: GridProductItem(
            // id: availProducts[index].id,
            // title: availProducts[index].title,
            // image: availProducts[index].image,
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
    );
  }
}
