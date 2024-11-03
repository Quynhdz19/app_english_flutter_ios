import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoingToScreen(),
    );
  }
}

class GoingToScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Going to',style: TextStyle(fontSize: 30.0)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/kids_studying.png',
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Usage',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "We can use 'going to' to talk about our future plans.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Image.asset(
              'assets/images/grammar_be_going_to.png',
              height: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'For example:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "I'm going to be a teacher when I'm older.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'How to use it',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "• Use 'am', 'is' or 'are' with going to and the infinitive.\n\nFor example:",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "- I am going to visit my grandparents tomorrow.",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "- She is going to bake a cake.",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}