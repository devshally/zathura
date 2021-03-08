import 'package:flutter/material.dart';
import 'package:zathura_v1/src/core/widgets/action_button.dart';

void main(){
  runApp(jupiter());
}

class jupiter extends StatelessWidget {
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
                child: Image.asset('images/jupiter.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Jupiter',
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
                    'Facts about Jupiter:',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Jupiter has the shortest day of all the planets.',
                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Eight spacecraft have visited Jupiter.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Jupiter is the fourth brightest object in the solar system.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Jupiter orbits the sun once every 11.8 Earth years.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'The Great Red Spot us a huge storm on Jupiter.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                ActionButton(buttonName: 'Explore Jupiter',
                  onPressed: () {
                    print('Exploring Jupiter');
                  },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
