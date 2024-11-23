import 'package:flutter/material.dart';
import 'package:flutter_v1/view/Home_Page/widget/home_screen.dart';
import 'package:flutter_v1/view/courses/lesson.dart';
import 'package:flutter_v1/view/english_game/english_game.dart';
import '../profile/profile.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex=0;
  final _page=[
    const HomeScreen(),
    const Lesson(),
    const EnglishGame(),
    const Profile(),
  ];
  String _getAppBarTitle(){
    switch(_currentindex){
      case 0:
        return 'Welcome Back';
      case 1:
        return 'Learn';
      case 2:
        return 'Game Center';
      case 3:
        return 'Profile';
      default:
        return 'Welcome Back';
    }
  }
  bool _shouldShowBackButton(){
    return _currentindex!=0;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false ,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
          leading: _shouldShowBackButton()? IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.white,size:24),
            onPressed: () {
            },
          ) :null,
          title: Text(
            _getAppBarTitle(),
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          actions: [
            _shouldShowBackButton()?
            IconButton(
              icon: const Icon(Icons.dark_mode,color: Colors.white,size: 24,),
              onPressed: () {
              },
            ):  IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.white,size: 24,),
              onPressed: () {
              },
            )
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
