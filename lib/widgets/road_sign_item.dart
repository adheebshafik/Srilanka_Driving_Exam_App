import 'package:flutter/material.dart';

class RoadSignItem extends StatelessWidget {
  final String id, imagePath, signText;

  const RoadSignItem({this.id, this.imagePath, this.signText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 140,
          height: 180,
          margin: EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              signText,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   margin: EdgeInsets.fromLTRB(60, 170, 0, 0),
        //   // color: Colors.white70,
        //   child: Text(
        //     signText,

        //   ),
        // ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
