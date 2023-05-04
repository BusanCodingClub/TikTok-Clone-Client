import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 57,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          // indicatorPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              iconMargin: EdgeInsets.zero,
              child: Text(
                'Home',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.language,
                size: 32,
              ),
              iconMargin: EdgeInsets.zero,
              child: Text(
                'Friends',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_box,
                size: 40,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.mail,
                size: 32,
              ),
              iconMargin: EdgeInsets.zero,
              child: Text(
                'Inbox',
                style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              iconMargin: EdgeInsets.zero,
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
