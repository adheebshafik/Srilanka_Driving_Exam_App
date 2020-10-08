import 'package:Srilanka_Driving_Exam_App/screens/practice_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(PracticeScreen.routeName),
            child: TabItem(
              text: 'Practice',
              path: 'assets/images/image 37.png',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/'),
            child: TabItem(
              text: 'Home',
              path: 'assets/images/image 34.png',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(StudyScreen.routeName),
            child: TabItem(
              text: 'Study',
              path: 'assets/images/image 22.png',
            ),
          )
        ],
      ),
    );
  }
}
