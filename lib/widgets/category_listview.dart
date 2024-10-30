import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget{

  final List<CategoryModel> categories=[
    CategoryModel(image: 'images/sports.png', categoryName: 'sports'),
    CategoryModel(image: 'images/entertainment.png', categoryName: 'entertainment'),
    CategoryModel(image: 'images/technology.png', categoryName: 'technology'),
    CategoryModel(image: 'images/science.png', categoryName: 'science'),
    CategoryModel(image: 'images/business.png', categoryName: 'business'),
    CategoryModel(image: 'images/health.png', categoryName: 'health'),
    CategoryModel(image: 'images/general.png', categoryName: 'general'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder:(context, index){
            return CategoryCard(category: categories[index],);
          }),
    );
  }
}