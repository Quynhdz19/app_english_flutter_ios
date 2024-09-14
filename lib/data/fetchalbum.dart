import 'dart:convert';
import 'package:json/album.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  var url = "https://jsonplaceholder.typicode.com/albums";
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
