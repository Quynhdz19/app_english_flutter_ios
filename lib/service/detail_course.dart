import 'package:flutter/material.dart';
import 'package:flutter_v1/data/course.dart';

class DetailCourse extends StatefulWidget {
  const DetailCourse({super.key, required this.course});
  final Course course;
  @override
  State<DetailCourse> createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  @override
  Widget build(BuildContext context) {
    final currentcourse =widget.course;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
              'Detail',
            style: TextStyle(
              fontSize: 50,
              color: Colors.cyan
            ),
          ),
        ),
      ),
    );
  }
}
