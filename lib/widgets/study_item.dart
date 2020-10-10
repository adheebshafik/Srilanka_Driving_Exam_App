import 'package:flutter/material.dart';

class StudyItem extends StatelessWidget {
  final String title, subText;
  final double leftMargin, rightMargin;

  const StudyItem({
    Key key,
    @required this.title,
    @required this.subText,
    @required this.leftMargin,
    @required this.rightMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      // padding: EdgeInsets.only(right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(
                subText,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 12)),
              Text(
                'tap to learn',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                right: rightMargin, left: leftMargin), //as a paramter
            child: Image.asset(
              'assets/images/image 39.png',
              height: 90,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
