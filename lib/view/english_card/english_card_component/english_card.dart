import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class EnglishCard extends StatefulWidget {
  const EnglishCard({super.key, required this.english_word, required this.img, required this.vietnam_word, required this.pronoun, required this.is_practice});
  final String english_word;
  final String vietnam_word;
  final String img;
  final String pronoun;
  final bool is_practice;

  @override
  State<EnglishCard> createState() => _EnglishCardState();
}

class _EnglishCardState extends State<EnglishCard> {
  final FlutterTts flutterTts = FlutterTts();
  Future<void> _speakEnglish() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(widget.english_word);
  }

  Future<void> _speakVietnamese() async {
    await flutterTts.setLanguage("vi-VN");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(widget.vietnam_word);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 470,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white10.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon buttons (sound and slow sound)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.volume_up, size: 36, color: Colors.blue),
                  onPressed: () async {
                    await _speakEnglish();
                    await Future.delayed(const Duration(seconds: 2));
                    await _speakVietnamese();
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.slow_motion_video, size: 36, color: Colors.blue),
                  onPressed: () {
                    // Play slow sound
                  },
                ),
              ],
            ),

            // Image of the bear
            Image.asset(
              widget.img,
              height: 250,
            ),

            if(!widget.is_practice)...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.english_word,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  // 'noun\n/beə/',
                  widget.pronoun,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
                Text(
                  widget.vietnam_word,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ]else...[
              const Text(
                'adjective',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ]

          ],
        ),
      ),
    );
  }
}
