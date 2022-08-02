// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/Providers/cart_provider/cart_provider.dart';
import 'package:simple_shop_app/Providers/product_provider/ProductsPrvider.dart';
import 'package:simple_shop_app/screens/cart_screen.dart';
import 'screens/MainShoppingScreen.dart';
import 'screens/ProductDetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (BuildContext context) => Products()),
    ChangeNotifierProvider(
    create: (BuildContext context) => Cart())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: Colors.pinkAccent
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
      routes:{
        MainShoppingScreen.id: (c)=> MainShoppingScreen(),
        ProductDetailsScreen.id: (c)=> ProductDetailsScreen(),
        CartScreen.id: (c) => CartScreen(),
      },
    ),);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainShoppingScreen();
  }
}
