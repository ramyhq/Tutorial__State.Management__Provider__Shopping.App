import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop/providers/ProductsPrvider.dart';
import 'package:simple_shop/screens/MainShoppingScreen.dart';
import 'package:simple_shop/screens/ProductDetailsScreen.dart';
//first version
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.pinkAccent
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
      routes: {
        MainShoppingScreen.id: (c)=> MainShoppingScreen(),
        ProductDetailsScreen.id: (c)=> ProductDetailsScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build( context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) {
          return Products();
        },
    child: MainShoppingScreen());
  }
}

