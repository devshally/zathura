import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:zathura_v1/src/core/home_screen/home.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}
final PageController pageController = PageController(initialPage: 0);
int numPages = 3;
int currentPage = 0;

List<Widget> buildPageIndicator() {
  List<Widget> list = [];
  for (int i = 0; i < numPages; i++) {
    list.add(i == currentPage ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 10.0,
    width: 10.0,
    decoration: BoxDecoration(
      color: isActive ? Colors.amber : Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
}

class _onBoardingState extends State<onBoarding> {
  get pageController => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(071126),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/onB.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              PageView(
                physics: ClampingScrollPhysics(),
                controller: pageController,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40.0, horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ZATHURA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Text(
                          'Travel to other planets \nwith ZATHURA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40.0, horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ZATHURA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Text(
                          'Experience space from your \nphone with ZATHURA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40.0, horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ZATHURA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Text(
                          'Let\'s go to space!!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      mainAxisSize: MainAxisSize.min,
                        children: buildPageIndicator(),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                maintainSize: false,
                visible: currentPage == numPages -1
                    ? true
                    : false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 17.0),
                  child: Container(
                    height: 50.0,
                    width: 340.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                      color: Colors.amber,
                      onPressed: () {
                        Get.off(homeScreen());
                      },
                      child: Text(
                        'Get started',
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
        ),
      ),
    );
  }
}