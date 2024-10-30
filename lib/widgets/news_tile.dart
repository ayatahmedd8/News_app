import 'package:flutter/material.dart';
import '../models/artical_model.dart';
import '../view/web_view.dart';

class NewsTile  extends StatelessWidget{
  final ArticleModel articleModel;

  const NewsTile({super.key, required this.articleModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailWebView(articleUrl: articleModel.url),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ?? '',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12,),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox( height: 8),
          Text(
            articleModel.subtitle ?? '',
            maxLines: 2,
            style:const TextStyle(
                color: Colors.grey,
                fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}