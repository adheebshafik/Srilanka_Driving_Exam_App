import 'package:Srilanka_Driving_Exam_App/screens/practice_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/question_list_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/quiz_results_screen.dart';
import 'package:flutter/material.dart';

class QuizProgress extends StatefulWidget {
  static const routeName = './quiz-progress';
  @override
  QuizProgressState createState() => QuizProgressState();
}

class QuizProgressState extends State<QuizProgress> {
  void _showcontent() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints(minWidth: double.infinity),
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(250.0))),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false, // user must tap button!

                          builder: (BuildContext context) {
                            return new AlertDialog(
                              title: new Text(
                                'Are You Sure You Want To Quit?',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: new SingleChildScrollView(
                                child: new ListBody(
                                  children: [
                                    new Spacer(),
                                    new SizedBox(
                                      height: 10,
                                    ),
                                    new Text(
                                      'You will lose all of your progress for the quiz',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Spacer(),
                                  ],
                                ),
                              ),
                              actions: [
                                Container(
                                  height: 30,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[200],
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
                                  child: new FlatButton(
                                    child: new Text(
                                      'Back To Quiz',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
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
                                  child: new FlatButton(
                                    child: new Text(
                                      'Exit Quiz',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          PracticeQuizScreen.routeName);
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Exit Quiz",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.all(Radius.circular(250.0))),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(QuestionListScreen.routeName),
                      child: Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Question List",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent[400],
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(250.0))),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false, // user must tap button!

                          builder: (BuildContext context) {
                            return new AlertDialog(
                              title: new Text(
                                'Are You Sure You Want To Finish?',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: new SingleChildScrollView(
                                child: new ListBody(
                                  children: [
                                    new Spacer(),
                                    new SizedBox(
                                      height: 10,
                                    ),
                                    new Text(
                                      'You have 5 unattempted questions',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Spacer(),
                                  ],
                                ),
                              ),
                              actions: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[200],
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
                                  child: new FlatButton(
                                    child: new Text(
                                      'Back To Quiz',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 130,
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
                                  child: new FlatButton(
                                    child: new Text(
                                      'View Remaining',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          QuestionListScreen.routeName);
                                    },
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[200],
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
                                  child: new FlatButton(
                                    child: new Text(
                                      'Finish',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          QuizResultsScreen.routeName);
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.done_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Finish Quiz",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Divider(),
          Text(
            "50% completed",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
