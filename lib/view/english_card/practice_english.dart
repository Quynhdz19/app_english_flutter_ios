import 'package:flutter/material.dart';
import 'package:flutter_v1/view/english_card/english_card_component/english_card.dart';

class PracticeEnglish extends StatelessWidget {
  const PracticeEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Practice"),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () {
              // Handle back button action
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.lightbulb_outline, color: Colors.green),
              onPressed: () {
                // Handle hint button action
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const EnglishCard(english_word: 'Lion', img: 'assets/lion_card.jpg',
                vietnam_word: 'sư tử', pronoun: 'noun\n/lai-ưn/', is_practice: true),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type your answer",
                  prefixIcon: const Icon(Icons.message),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle check button action
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: const Text("CHECK",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
