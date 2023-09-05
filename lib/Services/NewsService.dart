import 'package:dio/dio.dart';
import 'package:newsapp/models/articlel_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticalModel>> getTopHeadlinesNews(
      {required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=7ef14d64ed304e2dac8fe42a6f015bbc&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticalModel> articlesList = [];
      //print(articles);

      for (var article in articles) {
        ArticalModel articalModel = ArticalModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articalModel);
      }
      return articlesList;
    } catch (ex) {
      return [];
    }
  }
}
