import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      Response response = await dio.get(
       'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }
    catch (e) {
      return [];
    }
  }
}