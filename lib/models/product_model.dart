import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final String img;
  final double price;
  final double rating;

  ProductModel({
    required this.id,
    required this.name,
    required this.img,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromMap(Map<String, dynamic> products) {
    return ProductModel(
      id: products["id"],
      name: products["name"],
      img: products["imageUrl"],
      price: products["price"],
      rating: products["rating"],
    );
  }
}

final List<Map<String, dynamic>> dummyProducts = [
  {
    "id": 1,
    "name": "Wireless Headphones",

    "price": 120.99,
    "imageUrl": "https://via.placeholder.com/150",

    "rating": 4.5,
  },
  {
    "id": 2,
    "name": "Smart Watch",
    "price": 75.50,
    "imageUrl": "https://via.placeholder.com/150",
    "rating": 4.2,
  },
  {
    "id": 3,
    "name": "Gaming Mouse",
    "price": 35.00,
    "imageUrl": "https://via.placeholder.com/150",
    "rating": 4.8,
  },
  {
    "id": 4,
    "name": "Laptop Stand",
    "price": 29.99,
    "imageUrl": "https://via.placeholder.com/150",
    "rating": 4.3,
  },
  {
    "id": 5,
    "name": "4K Monitor",
    "price": 249.99,
    "imageUrl": "https://via.placeholder.com/150",
    "rating": 4.6,
  },
];
