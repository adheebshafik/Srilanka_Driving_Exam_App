import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_6.dart';
import 'package:flutter/material.dart';

class StartupScreen7 extends StatelessWidget {
  static const routeName = './startup-screen-7-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/StartupPage7.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 45,
                  // width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 4.0),
                      )
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  margin: EdgeInsets.only(bottom: 60),
                  child: FlatButton(
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(StartupScreen6.routeName);
                    },
                  ),
                ),
                Container(
                  height: 45,
                  // width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 4.0),
                      )
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  margin: EdgeInsets.only(bottom: 60),
                  child: FlatButton(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(DashboardScreen.routeName);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
