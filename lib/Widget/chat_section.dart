import 'package:complex_ui/Widget/pai_chart.dart';
import 'package:complex_ui/constrant.dart';
import 'package:flutter/material.dart';

class ChartSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Monthly Expenses',
                style: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kBackgroundColor,
                        boxShadow: customShadow),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kBackgroundColor,
                        boxShadow: customShadow),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: kTextColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
                  child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: expenses
                      .map((e) => Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: pieColors[expenses.indexOf(e)],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                e['name'],
                                style:
                                    TextStyle(color: kTextColor, fontSize: 14),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding:  EdgeInsets.only(right: 5.0),
                  child: PaiChart(),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
