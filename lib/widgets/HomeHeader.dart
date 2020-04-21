import 'package:flutter/material.dart';

import '../Constraint.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      height: 358,
      decoration: BoxDecoration(
        color: kBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(40.0),
          bottomRight: const Radius.circular(40.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          // ACTIONS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 20),
          // QUICK PREVIEW CASE
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Covid-19',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(25)),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(const Radius.circular(20)),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              // flex: 7,
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  size: 30,
                                ),
                                value: "Vietnam",
                                items: [
                                  'Indonesia',
                                  'Bangladesh',
                                  'United States',
                                  'Japan',
                                  'Vietnam',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Are you feeling sick?',
                        style: kHeadingTextStyle,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
                        style: TextStyle(
                          color: kTextSubtitleColor.withOpacity(0.8),
                          letterSpacing: 1,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                  // URGENT CONTACT
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 150,
                          child: RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.phone),
                            label: Text('Call Now'),
                            color: Color(0xFFFF4D58),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          child: RaisedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            label: Text('Send SMS'),
                            color: Color(0xFF4D79FF),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
