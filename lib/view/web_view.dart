import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailWebView extends StatelessWidget {
  final String articleUrl;

   NewsDetailWebView({super.key, required this.articleUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Details'),
      ),
      body: WebView(
        initialUrl: articleUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
