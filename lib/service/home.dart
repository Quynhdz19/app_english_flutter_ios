import 'package:flutter/material.dart';

import '../data/album.dart';
import '../data/fetchalbum.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Album> _albums = [];
  List<Album> _allAlbums = []; // Lưu trữ danh sách gốc

  @override
  void initState() {
    super.initState();
    fetchAlbum().then((value) {
      setState(() {
        _albums = value; // Gán giá trị ban đầu cho cả 2 danh sách
        _allAlbums = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
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
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    // Dùng danh sách gốc để lọc
                    _albums = _allAlbums.where((album) {
                      var title = album.name_course?.toLowerCase() ?? '';
                      return title.contains(text);
                    }).toList();
                  });
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: _albums.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _albums[index].id.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _albums[index].name_course ?? '',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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
