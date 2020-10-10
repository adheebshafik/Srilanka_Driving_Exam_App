import 'package:Srilanka_Driving_Exam_App/screens/learn_road_signs_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/road_signs_study_screen.dart';
import 'package:flutter/material.dart';

class QuizNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow[300],
        border: Border.all(color: Colors.yellow),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(0, 4.0),
          )
        ],
      ),
      width: 370,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(250.0))),
            child: GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(LearnRoadSignsScreen.routeName),
              child: Icon(
                Icons.help_outline,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(250.0))),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30,
            ),
          ),
          Container(
            // margin: EdgeInsets.fromLTRB(23, 0, 23, 50),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.black),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "01:24",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(250.0))),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 30,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(250.0))),
            child: Icon(
              Icons.outlined_flag,
              color: Colors.black,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
