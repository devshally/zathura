import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String buttonName;
  final Function onPressed;

  ActionButton({this.buttonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17.0),
            child: Container(
              height: 50.0,
              width: 340.0,
              child: MaterialButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                color: Colors.amber,
                onPressed: onPressed,
                child: Text(
                  buttonName,
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
    );
  }
}