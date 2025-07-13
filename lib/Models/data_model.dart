import 'package:flutter/material.dart';

class DataModel {
  final String title;
  final double price;
  final Color color;
  final String image;
  final String quantity;

  DataModel({
    required this.title,
    required this.price,
    required this.color,
    required this.image,
    required this.quantity,
  });
}

List<DataModel> dataModel = [
  // DataModel(
  //   title: 'Classical Chair',
  //   image: 'assets/images/classic_chair.png',
  //   price: 65.00,
  //   color: AppColors.classicalChairColor,
  //   quantity: '25/45',
  // ),
  // DataModel(
  //   title: 'Luxury Chair',
  //   image: 'assets/images/luxury_chair.png',
  //   price: 53.00,
  //   color: AppColors.luxuryChairColor,
  //   quantity: '20/55',
  // ),
  // DataModel(
  //   title: 'Harbor Chair',
  //   image: 'assets/images/harbor_chair.png',
  //   price: 55.00,
  //   color: AppColors.harborChairColor,
  //   quantity: '26/55',
  // ),
  // DataModel(
  //   title: 'Minimalism Chair',
  //   image: 'assets/images/minimal_chair.png',
  //   price: 40.00,
  //   color: AppColors.minimalChairColor,
  //   quantity: '22/55',
  // ),
  DataModel(
    title: "Classical Chair",
    price: 65.0,
    color: Color.fromARGB(255, 220, 220, 222),
    image: "assets/images/chair1.png",
    quantity: "25/45",
  ),
  DataModel(
    title: "Luxury Chair",
    price: 53.0,
    color: Color.fromARGB(255, 238, 222, 143),
    image: "assets/images/chair2.png",
    quantity: "20/45",
  ),
  DataModel(
    title: "Minimalism Chair",
    price: 40.0,
    color: Color.fromARGB(255, 216, 216, 216),
    image: "assets/images/chair3.png",
    quantity: "35/45",
  ),
  DataModel(
    title: "Harbor Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair4.png",
    quantity: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair3.png",
    quantity: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair2.png",
    quantity: "45/45",
  ),
  DataModel(
    title: "Classical Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair4.png",
    quantity: "45/45",
  ),
  DataModel(
    title: "Modern Chair",
    price: 55.0,
    color: Colors.grey.shade500,
    image: "assets/images/chair1.png",
    quantity: "45/45",
  ),
  // DataModel(
  //   title: "Modern Chair",
  //   price: 55.0,
  //   color: Colors.grey.shade600,
  //   image: "assets/images/item_2.png",
  //   quantity: "45/45",
  // ),
  // DataModel(
  //   title: "Luxury Chair",
  //   price: 55.0,
  //   color: Colors.grey.shade300,
  //   image: "assets/images/item_3.png",
  //   quantity: "45/45",
  // ),
];
