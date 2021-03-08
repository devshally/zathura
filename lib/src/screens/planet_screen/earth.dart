import 'package:flutter/material.dart';

void main(){
  runApp(earth());
}

class earth extends StatelessWidget {
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
                child: Image.asset('images/earth.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Earth',
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
                    'Facts about Earth:',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'sed do eiusmod tempor incididunt ut labore et dolore.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'quis nostrud exercitation ullamco laboris nisi ut aliquip.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'dolores eos qui ratione voluptatem sequi nesciunt.',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
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
                              print('Exploring Earth!');
                            },
                            child: Text(
                              'Explore Earth',
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
