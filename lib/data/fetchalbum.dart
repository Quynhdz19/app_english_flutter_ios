import 'dart:convert';
import 'package:http/http.dart' as http;

import 'album.dart';

Future<List<Album>> fetchAlbum() async {
  var url = "http://100.25.213.121/api/getCourses";
  var response = await http.get(Uri.parse(url)); // Chuyển đổi đúng cách từ String thành Uri
  List<Album> albums = [];

  if (response.statusCode == 200) {
    var albumJsonList = json.decode(response.body) as List<dynamic>; // Giải mã JSON thành danh sách động

    for (var albumJson in albumJsonList) { // Đổi tên biến để dễ hiểu hơn
      albums.add(Album.fromJson(albumJson));
    }
  }
  return albums;
}
