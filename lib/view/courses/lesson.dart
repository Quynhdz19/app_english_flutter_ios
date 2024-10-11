import 'dart:ffi';

import 'package:flutter/material.dart';

class lesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LessonsPage(),
    );
  }
}

class LessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lessons",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        children: [
          _buildLessonCard(
            title: "Learn vocabularies by topic",

            subtitle: "Learn vocabularies by topic description",
            imageUrl:
            "https://confusedparent.in/wp-content/uploads/2019/12/Creative-Ways-To-Study-Vocabulary-Words-1024x476.png",
          ),
          _buildLessonCard(
            title: "Learn vocabularies by video",
            subtitle: "Learn vocabularies by video description",
            imageUrl:

            "https://www.novakidschool.com/blog/wp-content/webp-express/webp-images/uploads/2021/08/unnamed-5.png.webp",
          ),
          _buildLessonCard(
            title: "Practice vocabularies",
            subtitle: "Practice vocabularies description",
            imageUrl:
            "https://brownbagteacher.com/wp-content/uploads/2014/02/7UpVocabulary.jpg",
          ),
          _buildLessonCard(
            title: "Basic grammar",
            subtitle: "Basic grammar description",
            imageUrl:
            "https://writer.com/wp-content/uploads/2022/03/What-is-grammar-1.png",
          ),
          _buildLessonCard(
            title: "Dictionary",
            subtitle: "Dictionary",
            imageUrl:
            "https://cdn.britannica.com/97/118097-050-5B2CF2EA/English-dictionary.jpg",

          ),
          Container(

          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Game',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue,
          )
        ],
      ),
    );
  }


  Widget _buildLessonCard({
    required String title,
    required String subtitle,
    required String imageUrl,
  }) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        onTap: () {
          // Tính năng thêm sự kiện khi nhấn vào mỗi mục bài học
        },
      ),
    );
  }
}
