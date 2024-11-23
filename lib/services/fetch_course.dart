import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/course.dart';

Future<List<Course>> fetchCourse() async {
  var url = "http://54.165.243.77/api/getCourses";
  var response = await http.get(Uri.parse(url)); // Chuyển đổi đúng cách từ String thành Uri
  List<Course> courses = [];

  if (response.statusCode == 200) {
    var courseJsonList = json.decode(response.body) as List<dynamic>; // Giải mã JSON thành danh sách động

    for (var courseJson in courseJsonList) { // Đổi tên biến để dễ hiểu hơn
      courses.add(Course.fromJson(courseJson));
    }
  }
  return courses;
}
