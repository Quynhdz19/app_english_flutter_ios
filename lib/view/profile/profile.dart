import 'package:flutter/material.dart';


class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.nightlight_round),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Avatar và thông tin người dùng
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nguyễn Quỳnh',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'quynhnguyen@gmail.com',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Tính năng chỉnh sửa hồ sơ ;
                      },
                      child: Text("Edit profile"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoCard("Your level", "100", Icons.leaderboard),
                  _buildInfoCard("100 Points", "No Rank", Icons.star_border),
                ],
              ),
              SizedBox(height: 20),

              // Các tính năng trong profile
              ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text("Learning process"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng đến trang Learning process
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text("Favorite Lessons"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng đến trang Favorite Lessons
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.badge, color: Colors.orange),
                title: Text("Achievements & Badges"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng đến trang thành tích và huy hiệu
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.leaderboard, color: Colors.green),
                title: Text("Leaderboard"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng bảng xếp hạng
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.grey),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //năng đăng xuất và điều hướng về màn hình đăng nhập
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
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

  // Hàm xây dựng các thẻ thông tin
  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue.shade50,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
