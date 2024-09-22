import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/course.dart';

class DetailCourse extends StatelessWidget {
  final Course course; // Đây là đối tượng course được truyền vào

  DetailCourse({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.name_course ?? 'Chi tiết khóa học'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.name_course ?? 'Không có tên khóa học',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Hiển thị thêm chi tiết khác của course ở đây
          ],
        ),
      ),
    );
  }
}
