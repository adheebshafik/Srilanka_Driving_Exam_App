import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String text, path;

  const TabItem({Key key, this.text, this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Image.asset(
              path,
              height: 30,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
