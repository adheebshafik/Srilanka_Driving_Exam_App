import 'package:Srilanka_Driving_Exam_App/dummy_data.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/Header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class QuestionInfoScreen extends StatelessWidget {
  static const routeName = './questionInfo-screen';
  @override
  Widget build(BuildContext context) {
    final questionID = ModalRoute.of(context).settings.arguments as String;

    final questionTitle =
        DUMMY_QUESTIONS.firstWhere((question) => question.id == questionID);

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
                Back_Button(back_button_title: 'Ask Us'),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 10),
                  child: Text(
                    'Quesions and Answer forum',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                  child: Text(
                    questionTitle.question,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                      'Morbi ut magna commodo, egestas tortor at, convallis nibh.'
                      'Pellentesque dignissim eu leo sed sollicitudin. Donec sed '
                      'nulla laoreet, hendrerit risus eu, lobortis nunc. Mauris '
                      'lacus tortor, bibendum id ipsum ut, accumsan convallis quam.'
                      'Mauris placerat eros sit amet laoreet elementum. Sed suscipit'
                      'vehicula mi a scelerisque.',
                      style: Theme.of(context).textTheme.bodyText2),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
