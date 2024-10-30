import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/category_listview.dart';
import '../widgets/news_listviewbuilder.dart';


class HomeView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
              ),
            ],
          )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32,),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
