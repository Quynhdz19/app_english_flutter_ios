import 'package:flutter/material.dart';
import 'package:flutter_v1/modal/video.dart';
import 'package:flutter_v1/servce/fetch_video.dart';

import 'detail_video.dart';

class PageListVideo extends StatefulWidget {
  const PageListVideo({super.key});

  @override
  State<PageListVideo> createState() => _PageListVideo();
}

class _PageListVideo extends State<PageListVideo> {
  List<Video> _video = [];
  List<Video> _allVideo = []; // Lưu trữ danh sách gốc

  @override
  void initState() {
    super.initState();
    fetchVideo().then((value) {
      setState(() {
        _video = value; // Gán giá trị ban đầu cho cả 2 danh sách
        _allVideo = value;
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
              'List Courses',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              child: TextField(
                decoration:  InputDecoration(
                  hintText: 'Search...',
                  hintStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    // Dùng danh sách gốc để lọc
                    _video = _allVideo.where((album) {
                      var title = album.name_video?.toLowerCase() ?? '';
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
                itemCount: _video.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Card(

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
                              _video[index].name_video ?? '',
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

                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailVideo(video: _video[index],),
                      )
                      );
                    },
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
