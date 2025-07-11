import 'package:flutter/material.dart';
import 'package:furniture_app_ui/widgets/custom_searchbar.dart';
import 'package:furniture_app_ui/components/grid_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Ibrahim",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 182, 182, 182),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Find Stylish Furniture",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade400,
                    ),
                    child: Icon(Icons.person, size: 35),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // مربع البحث
              CustomSearchbar(),

              SizedBox(height: 20),

              // العنوان الفرعي
              Text(
                "Popular Furniture",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              SizedBox(height: 20),

              Expanded(
                child: GridProduct(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
