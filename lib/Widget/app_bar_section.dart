import 'package:complex_ui/constrant.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Mehedi\'s Account',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: kTextColor),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            boxShadow: customShadow,
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.blueGrey[900],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
        ),
      );
  }
}
