import 'package:flutter/material.dart';
import 'package:newsapp/Pages/categoryPage.dart';
import 'package:newsapp/models/category_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
