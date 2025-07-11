import 'package:flutter/material.dart';

class DataModel {
  final String title;
  final double price;
  final Color color;
  final String image;
  final String productCode;

  DataModel({
    required this.title,
    required this.price,
    required this.color,
    required this.image,
    required this.productCode,
  });
}

List<DataModel> dataModel = [
  DataModel(
    title: "Classical Chair",
    price: 65.0,
    color: Color.fromARGB(255, 220, 220, 222),
    image: "assets/images/chair1.png",
    productCode: "25/45",
  ),
  DataModel(
    title: "Luxury Chair",
    price: 53.0,
    color: Color.fromARGB(255, 238, 222, 143),
    image: "assets/images/chair2.png",
    productCode: "20/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 40.0,
    color: Color.fromARGB(255, 216, 216, 216),
    image: "assets/images/chair3.png",
    productCode: "35/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair4.png",
    productCode: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair3.png",
    productCode: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair2.png",
    productCode: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair4.png",
    productCode: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair1.png",
    productCode: "45/45",
  ),
];
