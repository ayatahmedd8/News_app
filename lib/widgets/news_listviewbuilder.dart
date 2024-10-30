import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import '../models/artical_model.dart';
import '../services/new_service.dart';
import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {

  final String category;

  const NewsListViewBuilder({super.key, required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops there was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Loading...'),
                  ],
                )
            );
          }
        }
    );
  }
}