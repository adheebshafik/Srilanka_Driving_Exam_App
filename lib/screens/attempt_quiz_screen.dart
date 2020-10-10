import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/quiz_navigation.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/quiz_progress.dart';
import 'package:flutter/material.dart';

class AttemptQuizScreen extends StatefulWidget {
  static const routeName = './attempt-quiz-screen';
  AttemptQuizScreen() : super();
  @override
  AttemptQuizScreenState createState() => AttemptQuizScreenState();
}

class AttemptQuizScreenState extends State<AttemptQuizScreen> {
  static const routeName = './attempt-quiz-screen';
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
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
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Header(),
                Back_Button(back_button_title: 'Quiz'),
                // Text("Question 1 of 40\nWhat does this sign say?")
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Question",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        " 1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        " of",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        " 40",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, left: 20),
                  child: Text(
                    "What does this sign say?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  constraints: BoxConstraints(minWidth: double.infinity),
                  color: Colors.grey[400],
                  child: Image.asset(
                    'assets/images/image 5.png',
                    height: 110,
                  ),
                ),
                Column(
                  children: <Widget>[
                    RadioListTile(
                      value: 1,
                      groupValue: selectedRadio,
                      title: Text("Stop"),
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                      activeColor: Colors.green,
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: selectedRadio,
                      title: Text("Go"),
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                      activeColor: Colors.red,
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: selectedRadio,
                      title: Text("Wait"),
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                      activeColor: Colors.red,
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: selectedRadio,
                      title: Text("Pedestrian Crossing"),
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                      activeColor: Colors.red,
                    ),
                    QuizNavigation(),
                    QuizProgress(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      //bottomNavigationBar: QuizProgressAndNavigation(),
    );
  }
}
