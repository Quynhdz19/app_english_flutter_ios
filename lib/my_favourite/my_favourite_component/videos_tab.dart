import 'package:flutter/material.dart';

class VideosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://m.media-amazon.com/images/M/MV5BMzg0MWUzMjctYjVlOS00NzVjLWIwZDMtNzg1YzNkYzdjNTMwXkEyXkFqcGc@._V1_.jpg', // Đường dẫn tới ảnh
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Learn English with PUSS IN BOOTS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Learn English with PUSS IN BOOTS",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text("21:12", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
