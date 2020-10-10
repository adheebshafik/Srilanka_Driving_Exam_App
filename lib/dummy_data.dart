import 'package:Srilanka_Driving_Exam_App/models/road_sign.dart';
import 'package:flutter/material.dart';
import 'models/question.dart';

const DUMMY_QUESTIONS = const [
  Question(id: '1', question: 'How do I get an Exam Date?'),
  Question(id: '2', question: 'What are the pre requisites for the exam?'),
  Question(id: '3', question: 'Can I apply without a driving school?'),
  Question(id: '4', question: 'How long do I have to wait to retake an exam?'),
  Question(id: '5', question: 'How long is the exam?'),
];

const DUMMY__MEDICAL_QUESTIONS = const [
  Question(
      id: '1',
      question: 'What are the documents required to get the medical report?'),
  Question(id: '2', question: 'How long is the medical report valid for?'),
];

const DUMMY_ROAD_SIGNS = const [
  RoadSign(
      id: '1', imagePath: 'assets/images/image 7.png', signText: 'Stop Sign'),
  RoadSign(
      id: '2', imagePath: 'assets/images/image 30.png', signText: 'One Way'),
  RoadSign(
      id: '3',
      imagePath: 'assets/images/image 24.png',
      signText: 'Highway Divided'),
];
