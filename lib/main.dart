import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Container(
              height: 358,
              decoration: BoxDecoration(
                color: kBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // PREVENTION
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Prevention',
                    style: kHeadingTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List<Widget>.generate(
                      3,
                      (index) => Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                            children: <Widget>[
                              Stack(children: <Widget>[
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kPreventionBackground,
                                  ),
                                ),
                                SvgPicture.asset(
                                  index == 1
                                      ? 'assets/svg/contact.svg'
                                      : 'assets/svg/mask.svg',
                                  semanticsLabel: 'Acme Logo',
                                ),
                              ]),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Avoid close contact',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // SURVEY TEST
            Container(
              width: double.infinity,
              height: 110,
              margin: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(20.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF56549E),
                          Color(0xFFAEA1E6),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                top: -10,
                                left: 0,
                                child:
                                    SvgPicture.asset('assets/svg/survey.svg'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Do your own test!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Follow the instrucutions to do your text',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  letterSpacing: 1,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
