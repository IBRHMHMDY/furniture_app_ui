import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/data_model.dart';
import 'package:furniture_app_ui/widgets/product_card.dart';
import 'package:furniture_app_ui/screens/details_screen.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          childAspectRatio: 0.60,
        ),
        itemCount: dataModel.length,
        itemBuilder: (context, index) {
          final item = dataModel[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: item),
              ),
            ),
            child: productCard(
              context,
              item.quantity,
              item.title,
              item.price.toStringAsFixed(2),
              item.color,
              item.image,
            ),
          );
        },
      ),
    );
  }
}
