// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  create a clone of instgarme ui app that contain a hrizantall reels and list of post with the over all theme
//  if insta

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
        ),
        body: Column(children: [
          Container(
            height: 80,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/lion.jpeg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/sad.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/news.jpeg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/lion.jpeg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/sad.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6), // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 53, 208),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35), // Image radius
                      child: Image.asset('assets/images/news.jpeg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 229, 228, 229),
                  ),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(25), // Image radius
                                  child: Image.asset('assets/images/news.jpeg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'user1',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 20), // Border width
                                    child: Text(
                                      '5 minutes ago',
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.all(5),
                              width: 400,
                              height: 350,
                              child: Image.asset('assets/images/news.jpeg',
                                  fit: BoxFit.cover)),
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                textAlign: TextAlign.start,
                                'this post is from user 1 ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 229, 228, 229),
                  ),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(25), // Image radius
                                  child: Image.asset('assets/images/news.jpeg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'user1',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 20), // Border width
                                    child: Text(
                                      '5 minutes ago',
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.all(5),
                              width: 400,
                              height: 350,
                              child: Image.asset('assets/images/news.jpeg',
                                  fit: BoxFit.cover)),
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                textAlign: TextAlign.start,
                                'this post is from user 1 ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color.fromRGBO(0, 0, 0, 0.498),
            selectedItemColor: Color.fromRGBO(0, 0, 0, 0.498),
            // currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_box),
                label: 'Add post',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_stable),
                label: 'reels',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ]));
  }
}
