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



            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Column(
            //       children: [
            //         IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.home_filled,
            //               color: Colors.white,
            //               size: 30,
            //             )),
            //         //SizedBox(height: 2,),
            //         Text(
            //           'Home',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         )
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.search,
            //               color: Colors.white,
            //               size: 30,
            //             )),
            //         //SizedBox(height: 2,),
            //         Text(
            //           'Search',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         )
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.my_library_music_outlined,
            //               color: Colors.white,
            //               size: 30,
            //             )),
            //         //SizedBox(height: 2,),
            //         Text(
            //           'Your library',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         )
            //       ],
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
