import 'package:flutter/material.dart';

class ItemModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String currency;
  final bool isFavorite;
  final List<Color> colors;

  ItemModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.currency,
    required this.isFavorite,
    required this.colors,
  });

  static ItemModel fromJson(Map<String, dynamic> itemMap) {
    // use your custom method to convert color from api to flutter colors
    return ItemModel(
      id: itemMap['id'],
      name: itemMap['name'],
      imageUrl: itemMap['image'],
      price: itemMap['price'],
      currency: itemMap['currency'],
      isFavorite: itemMap['is_favorite'],
      colors: [Colors.red, Colors.blue, Colors.green],
    );
  }
}
