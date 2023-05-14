import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tiktok_clone/widget/video_post.dart';

class VerticalCarousel extends StatefulWidget {
  const VerticalCarousel({super.key});

  @override
  _VerticalCarouselState createState() => _VerticalCarouselState();
}

class _VerticalCarouselState extends State<VerticalCarousel> {
  int _current = 0;

  // videos: [{
  //   id, url, title, description, likes, comments, shares, views, channel
  // }]
  final List _videos = [
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
    {
      "id": 1,
      "url": "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      "title": "Butterfly",
      "description": "Butterfly in the sky",
      "likes": 100,
      "comments": 10,
      "shares": 5,
      "views": 1000,
      "channel": "Flutter"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              scrollDirection: Axis.vertical,
              // autoPlay: false,
            ),
            items: _videos
                .map((item) => Container(
                      child: VideoPost(video: item)
                    ))
                .toList(),
          );
        },
      ),
      // body: Column(
      //   children: [
      //     CarouselSlider(
      //       options: CarouselOptions(
      //         height: MediaQuery.of(context).size.height,
      //         viewportFraction: 1.0,
      //         enlargeCenterPage: false,
      //         scrollDirection: Axis.vertical,
      //         onPageChanged: (index, reason) {
      //           setState(() {
      //             _current = index;
      //           });
      //         }
      //       ),
      //       items: _videos.map((video) {
      //         return Builder(
      //           builder: (BuildContext context) {
      //             return GestureDetector(
      //               onTap: () {
      //                 print("Tapped on Video: $video");
      //                 // handle your touch event here
      //               },
      //               child: Container(
      //                 width: MediaQuery.of(context).size.width,
      //                 margin: EdgeInsets.symmetric(horizontal: 5.0),
      //                 decoration: BoxDecoration(color: Colors.amber),
      //                 child: Text(video, style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center),
      //                 // Replace Text widget with your video widget
      //               ),
      //             );
      //           },
      //         );
      //       }).toList(),
      //     ),
      //   ],
      // ),
    );
  }
}
