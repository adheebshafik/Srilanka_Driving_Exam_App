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
    return Material(
      child: InkWell(
        onTap: () {},
        splashColor: Colors.yellow,
        borderRadius: BorderRadius.circular(7),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(0, 4.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
