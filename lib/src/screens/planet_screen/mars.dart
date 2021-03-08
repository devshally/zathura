import 'package:flutter/material.dart';

void main(){
  runApp(mars());
}

class mars extends StatelessWidget {
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
                child: Image.asset('images/mars.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Mars',
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
                    'Facts about Mars:',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Mars is home to the tallest mountain in the solar system.',
                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Mars has the largest dust storms in the solar system.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'On Mars the sun appears about half the size as it does on Earth.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Mars takes its name from the Roman god of war.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Sunsets on Mars are blue.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17.0),
                        child: Container(
                          height: 50.0,
                          width: 340.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                            color: Colors.amber,
                            onPressed: () {
                              print('Exploring Mars!');
                            },
                            child: Text(
                              'Explore Mars',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                //fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
