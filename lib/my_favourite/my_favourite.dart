import 'package:flutter/material.dart';

import 'my_favourite_component/topics_tab.dart';
import 'my_favourite_component/videos_tab.dart';

class MyFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: const Text(
              "My FAVORITE",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white,weight: 28,),
              onPressed: () {
                // Add functionality to close or go back
              },
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(text: "Videos"),
                Tab(text: "Topics"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              VideosTab(),
              TopicsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
