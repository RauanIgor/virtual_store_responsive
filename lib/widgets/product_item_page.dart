import 'package:flutter/material.dart';

class ItemProductPage extends StatelessWidget {
  ItemProductPage(
      {super.key,
      required this.description,
      required this.price,
      required this.image});

  String description;
  String price;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Image.asset(
              'images/$image',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(this.description),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'R\$ ${this.price}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
