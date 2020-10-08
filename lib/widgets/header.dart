import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 40),
      child: Text(
        'Drivers Licence',
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
}
