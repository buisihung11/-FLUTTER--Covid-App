import 'package:firstapp/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Constraint.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            // HEADER
            HomeHeader(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  Prevention(),
                  SizedBox(height: 20),
                  Survey()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

