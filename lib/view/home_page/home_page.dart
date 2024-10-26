import 'package:flutter/material.dart';
import 'home_page_component/home_screen.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex=0;
  final _page=[
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false ,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
            },
          ),
          title: const Text('Wellcome Back!',style: TextStyle(fontSize: 18),),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
              },
            ),
          ],
        ),
        body: _page[_currentindex],


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
          currentIndex: _currentindex,
          onTap: (index){
            setState(() {
              _currentindex=index;
            });
          },
        ),
      ),
    );
  }
}
