import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import '../view/category_view.dart';

class CategoryCard extends StatelessWidget{

  final CategoryModel category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.categoryName,
          );
        },));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.fill
              )
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}