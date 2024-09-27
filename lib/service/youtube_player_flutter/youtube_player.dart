import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YtbPlayer extends StatefulWidget {
  const YtbPlayer({super.key});

  @override
  State<YtbPlayer> createState() => _YtbPlayerState();
}

class _YtbPlayerState extends State<YtbPlayer> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'swnVgzm38r4', // Chỉ cần ID video
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
              backgroundColor: Colors.amber,
              title: Center(child: const Text('Youtube Player')),
            ),
            body: player, // Trả về player tại đây
          ),
        );
      },
    );
  }
}
