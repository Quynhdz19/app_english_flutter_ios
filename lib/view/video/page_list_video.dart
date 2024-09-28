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
          leading: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.arrow_back,
              color: Colors.white,weight: 100,)
          ),
          title: const Text(
              'Videos page',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              padding: const EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlue.withOpacity(0.2),
                    offset: Offset(0, 3),
                    spreadRadius: 0.1,
                    blurRadius: 50,
                  )
                ]
              ),
              child: TextField(
                decoration:  InputDecoration(
                  hintText: 'Search here',
                  hintStyle: const TextStyle(fontSize: 20, ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(Icons.search,color: Colors.lightBlue,weight: 50,)
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
              child: ListView.builder(
                itemCount: _video.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      height: 250,
                      width: 250,
                      child: Card(
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 7/3,
                                child: Image.network(
                                  "https://cdn.tgdd.vn/Files/2022/06/05/1437445/cach-dang-ky-khoa-hoc-mien-phi-tren-moon-10_1280x720-800-resize.jpg",
                                  fit: BoxFit.cover,
                                 
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                _video[index].name_video ?? '',
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
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
                        builder: (context) => DetailVideo(video: _video[index]),
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
