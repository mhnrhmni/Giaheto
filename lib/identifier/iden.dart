import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Identifier extends StatefulWidget {
  const Identifier({super.key});

  @override
  State<Identifier> createState() => _IdentifierState();
}

class _IdentifierState extends State<Identifier> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Stack(
        children: [
          const WebViewApp2(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton.extended(
                backgroundColor: const Color.fromARGB(255, 0, 149, 109),
                onPressed: () {
                  Navigator.pop(context);
                },
                label: const Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Text(
                      'بـــازگــشت',
                      style: TextStyle(
                        fontFamily: 'aseman',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebViewApp2 extends StatefulWidget {
  const WebViewApp2({super.key});

  @override
  State<WebViewApp2> createState() => _WebViewApp2State();
}

class _WebViewApp2State extends State<WebViewApp2> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
          'https://identify.plantnet.org/k-world-flora/identify',
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'تشخـــیص گـیاه با عکــس ',
            style: TextStyle(fontFamily: 'aseman', fontSize: 30),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 149, 109),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}