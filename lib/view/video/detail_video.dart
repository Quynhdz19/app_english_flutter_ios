import 'package:flutter/material.dart';
import 'package:flutter_v1/view/video/page_list_video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../modal/video.dart';

class DetailVideo extends StatefulWidget {
  const DetailVideo({super.key, required this.video});
  final Video video;

  @override
  State<DetailVideo> createState() => _DetailVideo();
}

class _DetailVideo extends State<DetailVideo> {
  YoutubePlayerController? _controller;
  @override
  void initState() {
    super.initState();
    // Truy cập video URL từ home_page_component.video
    String url = widget.video.url_video!;

    // Tìm vị trí của 'v=' trong URL
    int startIndex = url.indexOf('v=') + 2;

    // Trích xuất đoạn mã video sau 'v='
    String videoId = url.substring(startIndex);
    _controller = YoutubePlayerController(
      initialVideoId: videoId, // Chỉ cần ID modal
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false, // Có thể thay đổi theo nhu cầu
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
      ),
      builder: (context, player) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageListVideo()));
                  },
                  icon: const Icon(Icons.arrow_back)
              )
              ,
              backgroundColor: Colors.amber,
              title: Center(child: const Text('Video')),
            ),
            body: player, // Trả về player tại đây
          ),
        );
      },
    );
  }
}
