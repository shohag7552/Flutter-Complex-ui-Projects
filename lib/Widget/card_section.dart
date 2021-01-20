import 'package:complex_ui/Widget/card_details.dart';
import 'package:flutter/material.dart';
import 'package:complex_ui/constrant.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Card Selected',
            style: TextStyle(
              fontSize: 16,
              color: kTextColor,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return bankCard(context);
              }),
        )
      ],
    );
  }
}

Widget bankCard(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
    width: MediaQuery.of(context).size.width / 1.125,
    decoration: BoxDecoration(
      color: kBackgroundColor,
      boxShadow: customShadow,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Stack(
      children: [
        Positioned.fill(
          bottom: -200,
          left: 100,
          right: 50,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white12,
              //boxShadow: customShadow
            ),
          ),
        ),
        Positioned.fill(
          left: -200,
          bottom: -50,
          top: -50,
          child: Container(
            decoration: BoxDecoration(
             
              shape: BoxShape.circle,
              color: Colors.white24,
            ),
          ),
        ),
        CardDetails(),
      ],
    ),
  );
}
