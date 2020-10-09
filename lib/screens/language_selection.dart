import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  static const routeName = './languageSelection-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Choose A Language",
                    style: TextStyle(fontFamily: 'DM Sans', fontSize: 24),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed("/"),
                          child: Container(
                            // margin: EdgeInsets.only(top: 40),
                            //image decoration
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(250.0))),
                            child: Image.asset(
                              'assets/images/English.png',
                              height: 170,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          //image decoration
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(250.0))),
                          child: Image.asset(
                            'assets/images/Sinhala.png',
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          //image decoration
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(250.0))),
                          child: Image.asset(
                            'assets/images/Tamil.png',
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
