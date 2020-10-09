import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:flutter/material.dart';

class ScheduleTextBox extends StatelessWidget {
  final String text;
  const ScheduleTextBox({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(AskUsScreen.routeName),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
