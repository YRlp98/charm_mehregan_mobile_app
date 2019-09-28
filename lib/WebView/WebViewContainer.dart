import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;
  final String pageTitle;

  WebViewContainer(this.url, this.pageTitle);

  @override
  _WebViewContainerState createState() =>
      _WebViewContainerState(this.url, this.pageTitle);
}

class _WebViewContainerState extends State<WebViewContainer> {
  String _url;
  String _pageTitle;
  final _key = UniqueKey();

  _WebViewContainerState(this._url, this._pageTitle);

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            title: new Text(
              _pageTitle,
              style: TextStyle(fontFamily: 'vazir'),
            )),
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new WebView(
                key: _key,
                initialUrl: _url,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
              ),
            )
          ],
        ));
  }
}
