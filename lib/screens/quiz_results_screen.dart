import 'package:Srilanka_Driving_Exam_App/screens/attempt_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/learn_road_signs_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:flutter/material.dart';

class QuizResultsScreen extends StatelessWidget {
  static const routeName = './quiz-results-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Header(),
            SizedBox(
              height: 45,
            ),
            Container(
              margin: EdgeInsets.only(left: 19),
              child: Text(
                "Quiz Results",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Well Done!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "39 Correct Answers!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "01 Incorrect Answers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "37 Minutes To Complete",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 25,
                            // width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(0, 4.0),
                                )
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            margin: EdgeInsets.only(right: 5),
                            child: FlatButton(
                              child: Text(
                                'Retry',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 12,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(AttemptQuizScreen.routeName);
                              },
                            ),
                          ),
                          Container(
                            height: 25,
                            // width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(0, 4.0),
                                )
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            margin: EdgeInsets.only(right: 5),
                            child: FlatButton(
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 12,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(DashboardScreen.routeName);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset('assets/images/score.png')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "What Went Wrong?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Question 3",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "What Does This Sign Say?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Your Answer",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Don't Stop",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red[600],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Correct Answer",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Stop",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green[600],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40,
                        // width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                              offset: Offset(0, 4.0),
                            )
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        margin: EdgeInsets.only(right: 5),
                        child: FlatButton(
                          child: Text(
                            'Go To Question',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AttemptQuizScreen.routeName);
                          },
                        ),
                      ),
                      Container(
                        height: 40,
                        // width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                              offset: Offset(0, 4.0),
                            )
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        margin: EdgeInsets.only(right: 5),
                        child: FlatButton(
                          child: Text(
                            'Read More',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(LearnRoadSignsScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
