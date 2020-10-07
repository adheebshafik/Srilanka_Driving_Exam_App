import 'package:Srilanka_Driving_Exam_App/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SriLanka Driving License Exam App',
      routes: {
        "/": (ctx) => DashboardScreen(),
      },
    );
  }
}
