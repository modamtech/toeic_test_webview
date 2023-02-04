import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl =
      'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2023-02-02&page=1';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hi Yo'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      */
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}