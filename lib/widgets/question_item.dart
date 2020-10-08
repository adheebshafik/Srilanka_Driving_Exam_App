import 'package:Srilanka_Driving_Exam_App/screens/question_info_screen.dart';
import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionItem extends StatelessWidget {
  final String id;
  final String question;

  const QuestionItem({@required this.id, @required this.question});

  void selectQuestion(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(QuestionInfoScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectQuestion(context),
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(17),
              child: Text(question),
            ),
          ],
        ),
      ),
    );
  }
}
