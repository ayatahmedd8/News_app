import 'package:flutter/material.dart';
import '../models/artical_model.dart';
import '../widgets/news_listviewbuilder.dart';

class CategoryView extends StatelessWidget{
  CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(category)),
        body: CustomScrollView(
            slivers: [
                   NewsListViewBuilder(category: category,),
                ],
             ),
          );

  }
}