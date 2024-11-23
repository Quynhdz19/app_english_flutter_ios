import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/course.dart';

class DetailCourse extends StatelessWidget {
  final Course course; // Đây là đối tượng course được truyền vào

  const DetailCourse({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Course'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://cdn.tgdd.vn/Files/2022/06/05/1437445/cach-dang-ky-khoa-hoc-mien-phi-tren-moon-10_1280x720-800-resize.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            Row(
              children: [
                const Text(
                  'Name of Course: ',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  course.name_course ?? 'Không có tên khóa học',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'UserID:',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Created at: ',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  course.created_at !,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Updated at!',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  course.updated_at!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            // Hiển thị thêm chi tiết khác của course ở đây
          ],
        ),
      ),
    );
  }
}
