import 'package:flutter/material.dart';

class PlanetButton extends StatelessWidget {
  final String planetName;
  final Function onPressed;
  final String planetImage;

  const PlanetButton({Key key, this.planetName, this.onPressed, this.planetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.amber,
            child: Image(
              image: AssetImage(planetImage),
            )),
        MaterialButton(
          onPressed: onPressed,
          child: Text(
            planetName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}