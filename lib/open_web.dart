import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OpenWeb extends StatefulWidget {
  final String title;
  final String url;

  const OpenWeb({super.key,
    required this.title,
    required this.url,
  });

  @override
  State<OpenWeb> createState() => _OpenWebState();
}

class _OpenWebState extends State<OpenWeb> {


  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController();
    
    controller
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
    NavigationDelegate(
    onPageFinished: (value) {
    }))
    ..loadRequest(Uri.parse(widget.url));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),

      body: WebViewWidget(controller: controller),
    );
  }
}
