import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {
  final back_button_title;

  const Back_Button({
    Key key,
    @required this.back_button_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/'),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 20,
            child: Image.asset('assets/images/image 16.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 5),
            child: Text(
              '${back_button_title}',
              style: Theme.of(context).textTheme.title,
            ),
          )
        ],
      ),
    );
  }
}
