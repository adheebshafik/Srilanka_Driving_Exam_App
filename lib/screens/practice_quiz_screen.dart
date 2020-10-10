import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:flutter/material.dart';

class PracticeQuizScreen extends StatelessWidget {
  static const routeName = './practice-quiz-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            Back_Button(
              back_button_title: 'Practice',
              routeName: '/',
            ),
            //Study Tile
            Container(
              margin: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(StudyScreen.routeName),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 4.0),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              'Section Quiz',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              'Try questions for each section',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        //image decoration

                        child: Image.asset(
                          'assets/images/image 18.png',
                          height: 65,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Practice Tile
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(PracticeQuizScreen.routeName),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 4.0),
                    )
                  ],
                ),
                padding: EdgeInsets.only(right: 15),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            'Random Quiz',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 17, top: 10),
                          child: Text(
                            'Random quiz of 40 questions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/images/image 11.png',
                        height: 75,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Ask Us Tile
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(AskUsScreen.routeName),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 4.0),
                    )
                  ],
                ),
                padding: EdgeInsets.only(right: 15),
                margin: EdgeInsets.only(bottom: 50),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 0, top: 30),
                          child: Text(
                            'Mock Exam',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 19, top: 10),
                          child: Text(
                            'Random quiz of 40 questions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      //image decoration

                      child: Image.asset(
                        'assets/images/image 13.png',
                        height: 65,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
