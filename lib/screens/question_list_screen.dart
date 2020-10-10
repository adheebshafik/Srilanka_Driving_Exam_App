import 'package:Srilanka_Driving_Exam_App/screens/attempt_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/quiz_progress.dart';
import 'package:flutter/material.dart';

class QuestionListScreen extends StatelessWidget {
  static const routeName = './question-list-screen';

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
            Back_Button(
              back_button_title: 'Question List',
              routeName: AttemptQuizScreen.routeName,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40,
                      // width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          'Unattempted',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 40,
                      // width: 60,
                      decoration: BoxDecoration(
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
                          'All',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 40,
                      // width: 60,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
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
                          'Flagged',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).pushNamed(AttemptQuizScreen.routeName)
                  },
                  child: Container(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 4.0),
                        )
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Question 1",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What Does This Sign Say?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).pushNamed(AttemptQuizScreen.routeName)
                  },
                  child: Container(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 4.0),
                        )
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Question 2",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What Does This Sign Say?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).pushNamed(AttemptQuizScreen.routeName)
                  },
                  child: Container(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 4.0),
                        )
                      ],
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Question 3",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "What Does This Sign Say?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Spacer(),
                        Icon(
                          Icons.outlined_flag,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(minWidth: double.infinity),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 4.0),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Question 4",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "What Does This Sign Say?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(minWidth: double.infinity),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 4.0),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Question 5",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "What Does This Sign Say?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                QuizProgress()
              ],
            )
          ],
        ),
      ),
    );
  }
}
