import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:zathura_v1/src/core/widgets/action_button.dart';
import 'package:zathura_v1/src/screens/trips/mercurytrips.dart';

void main() {
  runApp(Mercury());
}

class Mercury extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                height: 250.0,
                width: 250.0,
                child: Image.asset('images/mercury.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Mercury',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Divider(
              color: Colors.amber,
              thickness: 1.0,
              indent: 12.0,
              endIndent: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 15.0),
                  child: Text(
                    'Facts about Mercury:',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Mercury does not have any moons or rings.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Mercury is the smallest planet.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Your weight in Mercury would be 38% of your weight on Earth.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'A day on the surface of Mercury lasts 176 Earth days.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'A year on Mercury takes 88 Earth days.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                ActionButton(buttonName: 'Explore Mercury',
                  onPressed: () {
                    Get.to(mercuryTrips());
                  },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
