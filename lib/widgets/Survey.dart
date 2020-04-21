import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Survey extends StatelessWidget {
  const Survey({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

