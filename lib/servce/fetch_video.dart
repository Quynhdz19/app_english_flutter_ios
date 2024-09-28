import 'dart:convert';
import 'package:flutter_v1/modal/video.dart';
import 'package:http/http.dart' as http;


Future<List<Video>> fetchVideo() async {
  var url = "http://54.165.243.77/api/getAllVideos";
  var response = await http.get(Uri.parse(url)); // Chuyển đổi đúng cách từ String thành Uri
  List<Video> Videos = [];

  if (response.statusCode == 200) {
    var courseJsonList = json.decode(response.body) as List<dynamic>; // Giải mã JSON thành danh sách động

    for (var courseJson in courseJsonList) { // Đổi tên biến để dễ hiểu hơn
      Videos.add(Video.fromJson(courseJson));
    }
  }
  return Videos;
}
