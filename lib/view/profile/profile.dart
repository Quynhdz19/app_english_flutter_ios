import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Avatar và thông tin người dùng
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Nguyễn Quỳnh',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'quynhnguyen@gmail.com',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Tính năng chỉnh sửa hồ sơ ;
                      },
                      child: Text("Edit profile"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoCard("Your level", "100", Icons.leaderboard),
                  _buildInfoCard("100 Points", "No Rank", Icons.star_border),
                ],
              ),
              const SizedBox(height: 20),

              // Các tính năng trong profile
              ListTile(
                leading: const Icon(Icons.school, color: Colors.blue),
                title: const Text("Learning process"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng đến trang Learning process
                },
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text("Favorite Lessons"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Điều hướng đến trang Favorite Lessons
                },
              ),
              const Divider(),
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
    );
  }

  // Hàm xây dựng các thẻ thông tin
  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 16),
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
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
