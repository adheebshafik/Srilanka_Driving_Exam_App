import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/practice_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   centerTitle: true,
      // ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Header(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text('Lets Get Your Learners Permit !',
                    style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 150,
                height: 150,
                color: Colors.grey[300],
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 15,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(250.0))),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Container(
                // margin: EdgeInsets.only(right: ),
                width: 150,
                height: 150,
                color: Colors.yellow[300],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          // Study Tile
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(StudyScreen.routeName),
            child: Container(
              height: 90,
              decoration: BoxDecoration(color: Colors.yellow),
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Study',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    //image decoration
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(250.0))),
                    child: Image.asset(
                      'assets/images/image 1.png',
                      height: 75,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Practice Tile
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(PracticeScreen.routeName),
            child: Container(
              height: 90,
              decoration: BoxDecoration(color: Colors.black),
              padding: EdgeInsets.only(right: 15),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    'Practice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                      fontSize: 45,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    //image decoration
                    // decoration: BoxDecoration(
                    // border: Border.all(color: Colors.yellow),
                    // borderRadius: BorderRadius.all(
                    // Radius.elliptical(55, 22),
                    // ),
                    // ),
                    child: Image.asset(
                      'assets/images/image 10.png',
                      height: 75,
                      color: Colors.yellow,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Ask Us Tile
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(AskUsScreen.routeName),
            child: Container(
              height: 90,
              decoration: BoxDecoration(color: Colors.grey[100]),
              padding: EdgeInsets.only(right: 15),
              margin: EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                  Text(
                    'Ask Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 45,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    //image decoration
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(55),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/image 36.png',
                      height: 75,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
