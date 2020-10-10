import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/attempt_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/study_section_item.dart';
import 'package:flutter/material.dart';

class TrafficSignalsStudyScreen extends StatelessWidget {
  static const routeName = './traffic-signals-study-screen';

  void _trafficModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * .80,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(right: 50),
                  width: MediaQuery.of(context).size.width * .65,
                  child: Image.asset('assets/images/bar.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'Section 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // Positioned(child: ),
                SizedBox(height: 10),
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 250,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Etiam molestie bibendum placerat. Sed eget blandit lorem. '
                    'Nullam eget lorem sit amet justo interdum cursus.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 250,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Etiam molestie bibendum placerat. Sed eget blandit lorem. '
                    'Nullam eget lorem sit amet justo interdum cursus.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 250,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Etiam molestie bibendum placerat. Sed eget blandit lorem. '
                    'Nullam eget lorem sit amet justo interdum cursus.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          );
        });
  }

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
              back_button_title: 'Traffic Signals',
              routeName: StudyScreen.routeName,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Image.asset('assets/images/image 31.png'),
            ),
            GestureDetector(
              onTap: () => _trafficModalBottomSheet(context),
              child: StudySectionItem(
                title: 'Learn Traffic Signals',
                subText:
                    'Learn about all the different\nwarning signs and their meanings',
                learnOrPractice: 'tap to learn',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(AttemptQuizScreen.routeName),
              child: StudySectionItem(
                title: 'Test Your Knowlegde',
                subText:
                    'Learn about all the different\nwarning signs and their meanings',
                learnOrPractice: 'tap to practice',
              ),
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
