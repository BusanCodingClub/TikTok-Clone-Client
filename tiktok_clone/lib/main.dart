import 'package:flutter/material.dart';
import 'package:tiktok_clone/screen/Friends.dart';
import 'package:tiktok_clone/screen/Home.dart';
import 'package:tiktok_clone/screen/Inbox.dart';
import 'package:tiktok_clone/screen/MyHomePage.dart';
import 'package:tiktok_clone/screen/Profile.dart';
import 'package:tiktok_clone/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Home(),
              Friends(),
              MyHomePage(title: "타이틀"),
              Inbox(),
              Profile()
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
