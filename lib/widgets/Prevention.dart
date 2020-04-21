import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constraint.dart';

class Prevention extends StatelessWidget {
  const Prevention({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Prevention',
            style: TextStyle(
              color: kTextDarkColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
    );
  }
}
