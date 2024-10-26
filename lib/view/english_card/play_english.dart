import 'package:flutter/material.dart';
import 'english_card_component/english_card.dart';

class PlayEnglishCard extends StatefulWidget {
  const PlayEnglishCard({super.key});

  @override
  State<PlayEnglishCard> createState() => _PlayEnglishCardState();
}

class _PlayEnglishCardState extends State<PlayEnglishCard> {
  int _currentindex=0;
  final _card=[
    const EnglishCard(english_word: 'Bear', img: 'assets/bear_card.jpg',
      vietnam_word: 'Gấu', pronoun: 'noun\n/beə/', is_practice: false,),
    const EnglishCard(english_word: 'Lion', img: 'assets/lion_card.jpg',
      vietnam_word: 'Sư tử', pronoun: 'noun\n/lai-ưn/',is_practice: false,)
  ];
  void _goToNextCard(){
    setState(() {
      _currentindex=(_currentindex+1)% _card.length;
    });
  }
  void _goToPreviousCard(){
    setState(() {
      _currentindex=(_currentindex-1)% _card.length;
      if(_currentindex<0){
        _currentindex=_card.length-1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.blue,weight: 25,),
            onPressed: () {
              // Add functionality to close or go back
            },
          ),
          title: const Text(
            'Learn',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.red,weight: 25,),
              onPressed: () {
                // Add functionality for favorite
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 100,),
            _card[_currentindex],
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 36, color: Colors.red),
                    onPressed: () {
                      _goToPreviousCard();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 36, color: Colors.green),
                    onPressed: () {
                     _goToNextCard();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
