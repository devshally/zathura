import 'package:flutter/material.dart';

void main(){
  runApp(mercuryTrips());
}

class mercuryTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/mercury.png'),
    );
  }
}

