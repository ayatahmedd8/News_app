import 'package:flutter/material.dart';
import '../models/artical_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget{

  List<ArticleModel> articles;

  NewsListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: NewsTile( articleModel: articles[index],),
            );
          },));
  }
}