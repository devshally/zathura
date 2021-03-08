/*
This page has a lot of bugs at the moment, search is not fully implemented, and when you click on it, the loading icon is disfigured
Network images are currently being used to load the planet icons, change to asset images. Make the planet list scrollable, scale and resize
The date should read: Friday 13th, August 2020;
Implement a new search bar if needed, let it return actual values, before creating pages for the planets. Also the search bar icon should be
bigger and the search bar should contain text.
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:zathura_v1/src/core/widgets/planet_button.dart';
import 'package:zathura_v1/src/core/widgets/search_bar.dart';
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
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    buildContainer(),
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
                          PlanetButton(
                            planetName: 'Mercury',
                            onPressed: (){Get.to(Mercury());},
                            planetImage: 'images/mercury.png',
                          ),
                          PlanetButton(
                            planetName: 'Venus',
                            onPressed: (){Get.to(venus());},
                            planetImage: 'images/venus.png',
                          ),
                          PlanetButton(
                            planetName: 'Earth',
                            onPressed: (){Get.to(earth());},
                            planetImage: 'images/earth.png',
                          ),
                          PlanetButton(
                            planetName: 'Mars',
                            onPressed: (){Get.to(mars());},
                            planetImage: 'images/mars.png',
                          ),
                          PlanetButton(
                            planetName: 'Jupiter',
                            onPressed: (){Get.to(jupiter());},
                            planetImage: 'images/jupiter.png',
                          ),
                          PlanetButton(
                            planetName: 'Uranus',
                            onPressed: (){Get.to(uranus());},
                            planetImage: 'images/uranus.png',
                          ),
                          PlanetButton(
                            planetName: 'Neptune',
                            onPressed: (){Get.to(neptune());},
                            planetImage: 'images/neptune.png',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 290.0, bottom: 10.0),
                            child: Text(
                              'Moons',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          PlanetButton(
                            planetName: 'Pluto',
                            onPressed: (){Get.to(pluto());},
                            planetImage: 'images/pluto.png',
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

