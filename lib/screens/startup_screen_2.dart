import 'package:Srilanka_Driving_Exam_App/screens/startup_screen_3.dart';
import 'package:flutter/material.dart';

class StartupScreen2 extends StatelessWidget {
  static const routeName = './startup-screen-2-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/StartupPage2.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              // margin: EdgeInsets.only(top: 550),
              child: FlatButton(
                child: Text(
                  'Get Your Permit',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(StartupScreen3.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
