import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  final String hint;

  const SearchBox({
    Key key,
    this.onChanged,
    @required this.hint,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20 / 4,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200].withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(0, 4.0),
              )
            ],
          ),
          child: TextField(
            onChanged: onChanged,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                icon: SvgPicture.asset("assets/images/search.svg"),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        )
      ],
    );
  }
}
