import 'package:flutter/material.dart';

import 'Utility/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatApp Design',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF171717),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        iconSize: 32,
                        color: Colors.white,
                      ),
                      IconButton(
                          iconSize: 32,
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.search))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 10),
                    children: [
                      TextButton(
                        onPressed: () {},
                        child:
                            Text("Messages", style: KTopCategoryAppButtonStyle),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextButton(
                        onPressed: () {},
                        child:
                            Text('Online', style: KTopCategoryAppButtonStyle),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child:
                            Text('Groups', style: KTopCategoryAppButtonStyle),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Channels',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xFF27C1a9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      (40),
                    ),
                    topRight: Radius.circular(
                      (40),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Favourite Contacts',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          IconButton(
                            iconSize: 32,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                          circle_colum_avatar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 365,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFEFFFFC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(
                      (40),
                    ),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 25),
                  children: [
                    Row(children: [
                      Row(
                        children: [
                          user_avatar(),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                ('Lora'),
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                ('Hello, Hope all is well with you'),
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '20:22',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.tealAccent,
                            child: Text(
                              '5',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class circle_colum_avatar extends StatelessWidget {
  const circle_colum_avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          user_avatar(),
          SizedBox(
            height: 5,
          ),
          Text(
            'Alla',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class user_avatar extends StatelessWidget {
  const user_avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.lightBlueAccent,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/img1.jpeg').image,
      ),
    );
  }
}
