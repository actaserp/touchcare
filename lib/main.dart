import 'dart:io';                            // Add this import.
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  // Add from here ...
  late InAppWebViewController webView;

  @override
  void initState() {
    // _webViewController = WebViewController()
    // ..loadRequest(Uri.parse('https://plgtouchcare.co.kr'))
    // ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }
  // ... to here.

  @override
  Widget build(BuildContext context) {

    return WebviewScaffold(
      url: "http://www.plgtouchcare.co.kr/",
      withJavascript: true,
      ignoreSSLErrors: false,
      withZoom: false,
      // appBar: AppBar(
      //     title: Text("Flutter"),
      //     elevation: 1
      // ),
    );
    // return WebviewScaffold(
    //     url: 'http://www.plgtouchcare.co.kr/',
    //     hidden: true,
    //     ignoreSSLErrors: false,
    //     invalidUrlRegex: Platform.isAndroid
    //         ? '^(?!https://|http://|about:blank|data:).+'
    //         : null,
    // );
    // android 6~7 버전에서 ssl 인증에 에러오류날경우 흰색화면 처리됨
    // return Scaffold(
    //   body: InAppWebView(
    //     initialUrlRequest: URLRequest(
    //       url:  Uri.parse('https://www.plgtouchcare.co.kr/'),
    //     ),
    //     initialOptions:
    //       InAppWebViewGroupOptions(
    //         android: AndroidInAppWebViewOptions(useHybridComposition: true),
    //       ),
    //       onWebViewCreated: (InAppWebViewController controller){
    //         webView = controller;
    //       },
    //     onReceivedServerTrustAuthRequest: (InAppWebViewController controller, URLAuthenticationChallenge challenge) async {
    //       return new ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED);
    //     },
    //   ),
    // );
  }
}