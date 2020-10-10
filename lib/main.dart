import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/attempt_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/language_selection_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/learn_road_signs_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/practice_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/question_info_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/question_list_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/quiz_results_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/road_signs_study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_1.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_2.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_3.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_4.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_5.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_6.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_7.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/traffic_signals_study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/view_schedule_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/quiz_progress.dart';
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
        DashboardScreen.routeName: (ctx) => DashboardScreen(),
        StudyScreen.routeName: (ctx) => StudyScreen(),
        AskUsScreen.routeName: (ctx) => AskUsScreen(),
        QuestionInfoScreen.routeName: (ctx) => QuestionInfoScreen(),
        ViewScheduleScreen.routeName: (ctx) => ViewScheduleScreen(),
        LearnRoadSignsScreen.routeName: (ctx) => LearnRoadSignsScreen(),
        RoadSignsStudyScreen.routeName: (ctx) => RoadSignsStudyScreen(),
        TrafficSignalsStudyScreen.routeName: (ctx) =>
            TrafficSignalsStudyScreen(),
        LanguageSelection.routeName: (ctx) => LanguageSelection(),
        PracticeQuizScreen.routeName: (ctx) => PracticeQuizScreen(),
        AttemptQuizScreen.routeName: (ctx) => AttemptQuizScreen(),
        QuizProgress.routeName: (ctx) => QuizProgress(),
        QuestionListScreen.routeName: (ctx) => QuestionListScreen(),
        QuizResultsScreen.routeName: (ctx) => QuizResultsScreen(),
        "/": (ctx) => StartupScreen1(),
        StartupScreen2.routeName: (ctx) => StartupScreen2(),
        StartupScreen3.routeName: (ctx) => StartupScreen3(),
        StartupScreen4.routeName: (ctx) => StartupScreen4(),
        StartupScreen5.routeName: (ctx) => StartupScreen5(),
        StartupScreen6.routeName: (ctx) => StartupScreen6(),
        StartupScreen7.routeName: (ctx) => StartupScreen7(),
      },
    );
  }
}
