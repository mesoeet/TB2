import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/student.dart';
import 'package:tb2_mobile/features/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  await Hive.openBox<Student>('students');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Reminder',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}