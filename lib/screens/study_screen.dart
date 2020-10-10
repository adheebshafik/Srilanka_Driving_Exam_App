import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/road_signs_study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/traffic_signals_study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/study_item.dart';
import 'package:flutter/material.dart';

class StudyScreen extends StatelessWidget {
  static const routeName = './study-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Header(),
                Back_Button(
                  back_button_title: 'Study',
                  routeName: DashboardScreen.routeName,
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(RoadSignsStudyScreen.routeName),
                  child: StudyItem(
                    title: 'Road Signs',
                    subText:
                        'Learn about all the different\nwarning signs and their meanings',
                    leftMargin: 10,
                    rightMargin: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(TrafficSignalsStudyScreen.routeName),
                  child: StudyItem(
                    title: 'Traffic Signals',
                    subText: 'Learn how to follow traffic lights\naccordingly',
                    leftMargin: 10,
                    rightMargin: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                StudyItem(
                  title: 'Road Laws',
                  subText: 'Learn how you should travel\non the road',
                  leftMargin: 30,
                  rightMargin: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                StudyItem(
                  title: 'Hand Signals',
                  subText: 'Learn the different meanings of\nhand signals',
                  leftMargin: 10,
                  rightMargin: 10,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
