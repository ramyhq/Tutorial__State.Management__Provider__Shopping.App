import 'package:flutter/material.dart';

import '../screens/ProductDetailsScreen.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem(
      {Key? key, required this.id, required this.title, required this.image})
      : super(key: key);

  final String id, title, image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                  ProductDetailsScreen.id,
              arguments: id);
            },
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            )),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
          backgroundColor: Colors.black54,
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
