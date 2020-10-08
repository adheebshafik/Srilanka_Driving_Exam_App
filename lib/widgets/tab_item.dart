import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String text, path, routeName;

  const TabItem({Key key, this.text, this.path, this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.yellow[400],
      borderRadius: BorderRadius.circular(15),
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: Padding(
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
      ),
    );
  }
}
