import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/schedule_text_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

class ViewScheduleScreen extends StatelessWidget {
  static const routeName = './view-schedule-screen';

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
              back_button_title: 'Schedule',
              routeName: DashboardScreen.routeName,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10),
              child: Text(
                'When is your exam date ?',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 50),
              child: Image.asset('assets/images/calendar.png'),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Exam Scheduled on 24th of May 2020',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '8 more Days Remaining',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                ScheduleTextBox(
                  text: 'How do I get an Exam Date ?',
                ),
                SizedBox(
                  height: 10,
                ),
                ScheduleTextBox(
                  text: 'What are the pre requisites for the exam ?',
                ),
                SizedBox(
                  height: 10,
                ),
                ScheduleTextBox(
                  text: 'How to get my medical ?',
                ),
                SizedBox(
                  height: 25,
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
