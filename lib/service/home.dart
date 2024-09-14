import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Good morning',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.notification_add_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white30,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      child: Text(
                        'Music',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  SizedBox(
                    width: 9,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white30,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      child: Text(
                        'Podcasts & Shows',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white30,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/cat1.jpg',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              'Chill Mix',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/cat1.jpg',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            'Hot Hits Vietnam',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white30,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/music1.jpg',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              'Thien Ha Nghe Gi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/music2.jpg',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            'Daily Mix 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white30,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/music3.jpg',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              'Moody Mix',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/music4.jpg',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            'Top Songs-Vietnam',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Picked for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Stack(
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white30,
                          minimumSize: Size(double.infinity, 170),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 180,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Playlist',
                                style:
                                TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                'Ca Phe Quan Quen',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Mot minh trong quan, khuc nhac quen va',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.heart_broken,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 140,
                                  ),
                                  Icon(
                                    Icons.play_circle,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              )
                            ],
                          )
                        ],
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/cat1.jpg',
                      height: 170,
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 140,
                    child: Text(
                      'Ca Phe Quan Quen',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your top mixes',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
              height: 150,
              child: Row(
                children: [
                  Image.asset(
                    'assets/sobin1.jpg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/denvau.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home_filled,
                          color: Colors.white,
                          size: 30,
                        )),
                    //SizedBox(height: 2,),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        )),
                    //SizedBox(height: 2,),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.my_library_music_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    //SizedBox(height: 2,),
                    Text(
                      'Your library',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
