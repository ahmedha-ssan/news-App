import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/articlel_model.dart';
import 'newsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articalModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}

// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../Services/NewsService.dart';
// import '../models/articlel_model.dart';
// import 'news_container.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticalModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getnews();
//   }

//   Future<void> getnews() async {
//     articles = await NewsService(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     //NewsService(Dio()).getGeneralNews();
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile(
//                     article: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
