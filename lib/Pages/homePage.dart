import 'package:flutter/material.dart';

import '../widgets/CategoriesListView.dart';
import '../widgets/NewsListViewBilder.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 29,
              ),
            ),
            NewsListViewBilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
