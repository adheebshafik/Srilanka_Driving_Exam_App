import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/language_selection_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/practice_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/question_info_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/view_schedule_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SL Driving Exam App',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.black,
          fontFamily: 'Inter',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 51, 541, 1)),
                body2: TextStyle(color: Color.fromRGBO(20, 51, 541, 1)),
                title: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold),
              )),
      routes: {
        "/": (ctx) => DashboardScreen(),
        StudyScreen.routeName: (ctx) => StudyScreen(),
        PracticeScreen.routeName: (ctx) => PracticeScreen(),
        AskUsScreen.routeName: (ctx) => AskUsScreen(),
        QuestionInfoScreen.routeName: (ctx) => QuestionInfoScreen(),
        ViewScheduleScreen.routeName: (ctx) => ViewScheduleScreen(),
        LanguageSelection.routeName: (ctx) => LanguageSelection()
      },
    );
  }
}
