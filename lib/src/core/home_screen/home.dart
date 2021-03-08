/*
This page has a lot of bugs at the moment, search is not fully implemented, and when you click on it, the loading icon is disfigured
Network images are currently being used to load the planet icons, change to asset images. Make the planet list scrollable, scale and resize
The date should read: Friday 13th, August 2020;
Implement a new search bar if needed, let it return actual values, before creating pages for the planets. Also the search bar icon should be
bigger and the search bar should contain text.
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
// import 'package:flappy_search_bar/flappy_search_bar.dart';
// import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:zathura_v1/src/screens/planet_screen/earth.dart';
import 'package:zathura_v1/src/screens/planet_screen/jupiter.dart';
import 'package:zathura_v1/src/screens/planet_screen/mars.dart';
import 'package:zathura_v1/src/screens/planet_screen/mercury.dart';
import 'package:zathura_v1/src/screens/planet_screen/neptune.dart';
import 'package:zathura_v1/src/screens/planet_screen/pluto.dart';
import 'package:zathura_v1/src/screens/planet_screen/uranus.dart';
import 'package:zathura_v1/src/screens/planet_screen/venus.dart';


class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

void main() {
  runApp(homeScreen());
}

class homeScreen extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  var dt = DateTime.now();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(071126),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Text(
                        'Hey Zathuran',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1.0, vertical: 15.0),
                      child: Text(
                        DateFormat('yMMMMEEEEd').format(dt),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
//                     Container(
//                       height: 100.0,
//                       child: SearchBar<Post>(
//                         onSearch: search,
//                         cancellationWidget: Icon(
//                           Icons.cancel,
//                           color: Colors.white,
//                         ),
//                         onItemFound: (Post post, int index) {
//                           return ListTile(
//                             title: Text(post.title),
//                             subtitle: Text(post.description),
//                           );
//                         },
// //                        searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
//                         headerPadding: EdgeInsets.symmetric(horizontal: 10),
//                         listPadding: EdgeInsets.symmetric(horizontal: 10),
//                         searchBarStyle: SearchBarStyle(
//                           backgroundColor: Colors.white,
//                           padding: EdgeInsets.all(7),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                       ),
//                     ),
                    Text(
                      'Planets',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.amber,
                                  child: Image(
                                    image: AssetImage('images/mercury.png'),
                                  )),
                              FlatButton(
                                onPressed: () {
                                  Get.to(Mercury());
                                },
                                child: Text(
                                  'Mercury',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 30.0,
                                child: Image(
                                  image: AssetImage('images/venus.png'),
                                ),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(venus());
                                },
                                child: Text(
                                  'Venus',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                  image: AssetImage('images/earth.png'),
                                ),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(earth());
                                },
                                child: Text(
                                  'Earth',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                  image: AssetImage('images/mars.png'),
                                ),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(mars());
                                },
                                child: Text(
                                  'Mars',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                    image: AssetImage('images/jupiter.png')),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(jupiter());
                                },
                                child: Text(
                                  'Jupiter',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                    image: AssetImage('images/uranus.png')),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(uranus());
                                },
                                child: Text(
                                  'Uranus',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                    image: AssetImage('images/neptune.png')),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(neptune());
                                },
                                child: Text(
                                  'Neptune',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                child: Image(
                                    image: AssetImage('images/pluto.png')),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Get.to(pluto());
                                },
                                child: Text(
                                  'Pluto',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
