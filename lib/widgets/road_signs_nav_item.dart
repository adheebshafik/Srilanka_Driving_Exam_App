import 'package:flutter/material.dart';

class RoadSignsNavItem extends StatelessWidget {
  final String text;
  final Color textColor, bgColor;

  const RoadSignsNavItem({
    Key key,
    @required this.text,
    @required this.textColor,
    @required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
    );
  }
}
