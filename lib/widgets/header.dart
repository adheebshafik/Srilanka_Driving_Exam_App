import 'package:Srilanka_Driving_Exam_App/screens/language_selection_screen.dart';
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
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'Drivers Licence',
            style: Theme.of(context).textTheme.title,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () =>
              Navigator.of(context).pushNamed(LanguageSelection.routeName),
          child: Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              //image decoration
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(250.0))),
              child: Icon(Icons.language)),
        ),
      ],
    );
  }
}
