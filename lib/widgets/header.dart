import 'package:Srilanka_Driving_Exam_App/screens/language_selection.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 40),
          child: Text(
            'Drivers Licence',
            style: Theme.of(context).textTheme.title,
          ),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.of(context).pushNamed(LanguageSelection.routeName),
          child: Container(
            margin: EdgeInsets.only(left: 190, top: 40),
            //image decoration
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(250.0))),
            child: Image.asset(
              'assets/images/langSelect.png',
              height: 25,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
