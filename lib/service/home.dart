import 'package:flutter/material.dart';

import '../data/course.dart';
import '../data/fetchcourse.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Course> _courses = [];
  List<Course> _allCourses = []; // Lưu trữ danh sách gốc

  @override
  void initState() {
    super.initState();
    fetchCourse().then((value) {
      setState(() {
        _courses = value; // Gán giá trị ban đầu cho cả 2 danh sách
        _allCourses = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Reading Json',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    // Dùng danh sách gốc để lọc
                    _courses = _allCourses.where((album) {
                      var title = album.name_course?.toLowerCase() ?? '';
                      return title.contains(text);
                    }).toList();
                  });
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: _courses.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                              "https://cdn.tgdd.vn/Files/2022/06/05/1437445/cach-dang-ky-khoa-hoc-mien-phi-tren-moon-10_1280x720-800-resize.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 100,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              _courses[index].name_course ?? '',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
