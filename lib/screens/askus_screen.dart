import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/question_item.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/search_box.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/tab_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class AskUsScreen extends StatefulWidget {
  static const routeName = './askus-screen';

  @override
  _AskUsScreenState createState() => _AskUsScreenState();
}

class _AskUsScreenState extends State<AskUsScreen> {
  void _showcontent() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return new AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text(
                'Submit your Question',
                style: TextStyle(fontSize: 17),
              ),
              IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: [
                new Text('Name'),
                new Spacer(),
                new Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10 / 4,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200].withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
                new SizedBox(
                  height: 10,
                ),
                new Text('Question'),
                new Spacer(),
                new Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(
                    vertical: 10 / 4,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200].withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 65),
              margin: EdgeInsets.only(right: 5),
              color: Colors.yellow,
              child: new FlatButton(
                child: new Text(
                  'Submit Question',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //     ModalRoute.of(context).settings.arguments as Map<String, String>;

    // final questionId = routeArgs['id'];
    // final questions = DUMMY_QUESTIONS.where((question) {
    //   return question.question.contains(questionId);
    // }).toList();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Header(),
                Back_Button(
                  back_button_title: 'Ask Us',
                  routeName: DashboardScreen.routeName,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 10),
                  child: Text(
                    'Quesions and Answer forum',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
            SearchBox(
              hint: 'Type Your Question',
              onChanged: (value) => {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10),
              child: Text(
                'Most Frequent',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Column(
              children: DUMMY_QUESTIONS
                  .map((question) => QuestionItem(
                      id: question.id, question: question.question))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15),
              child: Text(
                'Question regarding medical',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Column(
              children: DUMMY__MEDICAL_QUESTIONS
                  .map((question) => QuestionItem(
                      id: question.id, question: question.question))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showcontent,
        child: Icon(Icons.add),
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
