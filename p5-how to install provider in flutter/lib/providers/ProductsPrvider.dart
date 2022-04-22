// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';

import '../data layer/models/product.dart';

class Products with ChangeNotifier{

   List<Product> _availProducts = [
    Product(
        id: '1001',
        title: 'Samsung',
        description: "it's a phone",
        image: 'assets/images/samsung.jpeg',
        price: 1000),
    Product(
        id: '1002',
        title: 'iphone',
        description: "it's a phone",
        image: 'assets/images/iphone.jpg',
        price: 1000),
    Product(
        id: '1003',
        title: 'realme',
        description: "it's a phone",
        image: 'assets/images/realme.jpeg',
        price: 1000),
    Product(
        id: '1004',
        title: 'nokia',
        description: "it's a phone",
        image: 'assets/images/nokia.jpg',
        price: 1000),
    Product(
        id: '1005',
        title: 'oneplus',
        description: "it's a phone",
        image: 'assets/images/oneplus.jpeg',
        price: 1000),
  ];

   List<Product> get availProducts{
     // return a copy of _availProducts
     return [..._availProducts];
   }

   void addProduct(){
     //_availProducts.add(value);
     notifyListeners();
   }
}