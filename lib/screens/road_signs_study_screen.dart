import 'package:Srilanka_Driving_Exam_App/screens/learn_road_signs_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/study_section_item.dart';
import 'package:flutter/material.dart';

class RoadSignsStudyScreen extends StatelessWidget {
  static const routeName = './road-signs-study-screen';
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
            Header(),
            Back_Button(
              back_button_title: 'Road Signs',
              routeName: StudyScreen.routeName,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: AspectRatio(
                aspectRatio: 487 / 451,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image 21.png'),
                        alignment: FractionalOffset.topCenter,
                        fit: BoxFit.fitWidth,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.dstATop)),
                  ),
                ),
              ),
            ),
            InkWell(
              // splashColor: Colors.yellow,
              // borderRadius: BorderRadius.circular(25),
              onTap: () => Navigator.of(context)
                  .pushNamed(LearnRoadSignsScreen.routeName),
              child: StudySectionItem(
                title: 'Learn Road Signs',
                subText:
                    'Learn about all the different\nwarning signs and their meaning',
                learnOrPractice: 'tap to learn',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            StudySectionItem(
              title: 'Test Your Knowlegde',
              subText:
                  'Learn about all the different\nwarning signs and their meaning',
              learnOrPractice: 'tap to practice',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
