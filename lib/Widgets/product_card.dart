import 'package:flutter/material.dart';

Container productCard(
  BuildContext context,
  String productCode,
  String title,
  String price,
  Color color,
  String image,
) {
  return Container(
    height: 300,
    width: MediaQuery.of(context).size.width / 0.4,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: color,
    ),
    child: Column(
      children: [
        Image.asset(image, height: 210, width: double.infinity),
        Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: MediaQuery.of(context).size.width / 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      productCode,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
