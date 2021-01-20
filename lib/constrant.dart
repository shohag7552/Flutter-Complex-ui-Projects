import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color kBackgroundColor = Color(0xFFCBDDEB);
final Color kTextColor = Color(0xFF154360);

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: 5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900].withOpacity(0.5),
      spreadRadius: -4,
      offset: Offset(7, 7),
      blurRadius: 20),
];

List expenses = [
  {'name': 'Groceries', 'ammount': 500.0},
  {'name': 'Online Shopping', 'ammount': 100.0},
  {'name': 'Eating Out', 'ammount': 80.0},
  {'name': 'Bills', 'ammount': 50.0},
  {'name': 'Subscription', 'ammount': 100.0},
  {'name': 'Fees', 'ammount': 30.0},
];

List pieColors = [
  Colors.green,
  Colors.indigo[400],
  Colors.orange,
  Colors.blue,
  Colors.amber,
  Colors.red
];
