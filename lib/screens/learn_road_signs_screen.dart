import 'package:Srilanka_Driving_Exam_App/dummy_data.dart';
import 'package:Srilanka_Driving_Exam_App/screens/road_signs_study_screen.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/back_button.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/bottom_nav_bar.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/header.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/road_sign_item.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/road_signs_nav_item.dart';
import 'package:Srilanka_Driving_Exam_App/widgets/search_box.dart';
import 'package:flutter/material.dart';

class LearnRoadSignsScreen extends StatefulWidget {
  static const routeName = './learn-road-signs-screen';

  @override
  _LearnRoadSignsScreenState createState() => _LearnRoadSignsScreenState();
}

class _LearnRoadSignsScreenState extends State<LearnRoadSignsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BackgroundImage.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Header(),
            Back_Button(
              back_button_title: 'Road Signs',
              routeName: RoadSignsStudyScreen.routeName,
            ),
            SearchBox(hint: 'Search for Signs'),
            Container(
              height: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RoadSignsNavItem(
                      text: 'Warning\n  Signs',
                      textColor: Colors.black,
                      bgColor: Colors.grey[50],
                    ),
                    RoadSignsNavItem(
                      text: 'Alert\nSigns',
                      textColor: Colors.white,
                      bgColor: Colors.black,
                    ),
                    RoadSignsNavItem(
                      text: 'Miscellaneous\n      Signs',
                      textColor: Colors.black,
                      bgColor: Colors.grey[50],
                    ),
                    RoadSignsNavItem(
                      text: '   All\nSigns',
                      textColor: Colors.black,
                      bgColor: Colors.grey[50],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // GridView(
            //   // padding: const EdgeInsets.all(25),
            //   padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            //   children: DUMMY_ROAD_SIGNS
            //       .map((sign) => RoadSignItem(
            //             id: sign.id,
            //             imagePath: sign.imagePath,
            //             signText: sign.signText,
            //           ))
            //       .toList(),
            //   // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //   //   maxCrossAxisExtent: 200,
            //   //   childAspectRatio: 3 / 2,
            //   //   crossAxisSpacing: 20,
            //   //   mainAxisSpacing: 20,
            //   // ),
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //       mainAxisSpacing: 10.0,
            //       crossAxisSpacing: 20.0,
            //       childAspectRatio: 0.7),
            // )

            GridView.count(
              padding: EdgeInsets.all(8),
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 20,
              childAspectRatio: .7,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: DUMMY_ROAD_SIGNS
                  .map((sign) => RoadSignItem(
                        id: sign.id,
                        imagePath: sign.imagePath,
                        signText: sign.signText,
                      ))
                  .toList(),
            ),

            // Column(
            //   children: DUMMY_ROAD_SIGNS
            //       .map((sign) => RoadSignItem(
            //             id: sign.id,
            //             imagePath: sign.imagePath,
            //             signText: sign.signText,
            //           ))
            //       .toList(),
            // )

            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
