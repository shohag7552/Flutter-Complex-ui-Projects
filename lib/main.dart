import 'package:complex_ui/Widget/app_bar_section.dart';
import 'package:complex_ui/Widget/card_section.dart';
import 'package:complex_ui/Widget/chat_section.dart';
import 'package:complex_ui/constrant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //SizedBox(height: 10,),
            Expanded(flex: 1, child: AppBarSection()),
            Expanded(flex: 3, child: CardSection()),
            Expanded(flex: 4, child: ChartSection())
          ],
        ),
      ),
    );
  }
}
