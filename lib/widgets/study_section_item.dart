import 'package:flutter/material.dart';

class StudySectionItem extends StatelessWidget {
  final String title, subText, learnOrPractice;

  const StudySectionItem({
    Key key,
    @required this.title,
    @required this.subText,
    this.learnOrPractice,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 15)),
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
                learnOrPractice,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
