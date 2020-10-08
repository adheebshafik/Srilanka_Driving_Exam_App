import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20 / 4,
          ),
          decoration: BoxDecoration(
              color: Colors.grey[200].withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: TextField(
            onChanged: onChanged,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                icon: SvgPicture.asset("assets/images/search.svg"),
                hintText: 'Type your question',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        )
      ],
    );
  }
}
