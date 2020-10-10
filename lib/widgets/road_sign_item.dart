import 'package:flutter/material.dart';

class RoadSignItem extends StatelessWidget {
  final String id, imagePath, signText;

  const RoadSignItem({this.id, this.imagePath, this.signText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(0, 4.0),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            child: Text(
              signText,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
