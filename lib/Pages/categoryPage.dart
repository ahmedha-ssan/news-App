import 'package:flutter/material.dart';
import 'package:newsapp/widgets/NewsListViewBilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBilder(
            category: category,
          )
        ],
      ),
    );
  }
}
