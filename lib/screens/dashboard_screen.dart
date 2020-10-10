import 'package:Srilanka_Driving_Exam_App/screens/askus_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/practice_quiz_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/view_schedule_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: ListView(
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
                ),
                Container()
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 180,
                      margin: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(3, 3),
                          )
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(23, 0, 23, 50),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, top: 40),
                          child: Text(
                            '           4\n more Days',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(ViewScheduleScreen.routeName),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(41, 130, 0, 0),
                        // color: Colors.white70,
                        child: Text(
                          'View Schedule',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400],
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                              offset: Offset(0, 4.0),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 180,
                      margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(3, 3),
                          )
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(23, 0, 23, 50),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, top: 40),
                          child: Text(
                            '         37%\n completed',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(25, 130, 0, 0),
                      // color: Colors.white70,
                      child: Text(
                        'View Detail',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(color: Colors.white10, spreadRadius: 4)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            // Study Tile
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(StudyScreen.routeName),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 4.0),
                    )
                  ],
                ),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(250.0))),
                      child: Image.asset(
                        'assets/images/image 1.png',
                        height: 65,
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
                  Navigator.of(context).pushNamed(PracticeQuizScreen.routeName),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700],
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 4.0),
                    )
                  ],
                ),
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
                      margin: EdgeInsets.only(left: 45, right: 10),
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
              onTap: () =>
                  Navigator.of(context).pushNamed(AskUsScreen.routeName),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 4.0),
                    )
                  ],
                ),
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
      ),
    );
  }
}
