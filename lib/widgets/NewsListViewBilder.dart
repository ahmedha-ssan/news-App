// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlel_model.dart';

import '../Services/NewsService.dart';
import 'newsListView.dart';

class NewsListViewBilder extends StatefulWidget {
  const NewsListViewBilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBilder> createState() => _NewsListViewBilderState();
}

class _NewsListViewBilderState extends State<NewsListViewBilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlinesNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data ?? [],
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('Error try later...'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
