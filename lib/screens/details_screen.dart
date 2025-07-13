import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constants/colors.dart';
import 'package:furniture_app_ui/models/data_model.dart';
import 'package:furniture_app_ui/widgets/bg_shape_flipped.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.product});
  final DataModel product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 0.7,
            child: Container(color: Colors.white),
          ),

          Positioned(
            top: screenSize.height * 0.1,
            left: screenSize.width * 0.15,
            right: screenSize.width * 0.15,
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.contain,
              height: screenSize.height * 0.4, // حجم الصورة
            ),
          ),

          // 3. البطاقة البيضاء ذات الحواف المستديرة
          Positioned(
            bottom: 0, // تثبيت البطاقة في أسفل الشاشة
            left: 0,
            right: 0,
            height: screenSize.height * 0.5,

            child: ClipPath(
              clipper: BgShapeFlipped(),
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryDarkGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text(
                      widget.product.title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 15),
                    // النص الوصفي
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel felis accumsan, cursus neque condimentum, cursus ante.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "\$${widget.product.price.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //  Minus Button
                        GestureDetector(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(166, 49, 241, 58),
                            ),
                            child: Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        // Current Value
                        SizedBox(
                          height: 60,
                          width: 40,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        // Plus Button
                        GestureDetector(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 16, 213, 118),
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        // AddtoCart Button
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
