import 'package:flutter/material.dart';

enum Price{
  afordable,
  pricey,
  luxurious
}

class Recipe{
  final String? title;
  final List<String>? ingredient;
  final Price? price;
  final List<String>? category;
  final String? imageUrl;

  const Recipe({@required this.imageUrl,@required this.ingredient,@required this.price,@required this.title,@required this.category});
}