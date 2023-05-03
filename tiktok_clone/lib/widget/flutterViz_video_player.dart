import 'package:flutter/material.dart';

class FlutterVizVideoPlayer extends StatelessWidget {
  String url;
  FlutterVizVideoPlayer({required String this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text("FlutterVizVideoPlayer")),
    );
  }
}
