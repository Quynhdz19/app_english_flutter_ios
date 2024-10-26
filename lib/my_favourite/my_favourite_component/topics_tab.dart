import 'package:flutter/material.dart';

class TopicsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _buildTopicCard("Animal", "https://imgcdn.stablediffusionweb.com/2024/3/27/a4669802-2627-42ff-944d-11c6de6378e3.jpg"),
          const SizedBox(height: 20),
          _buildTopicCard("Body parts", "https://sohanews.sohacdn.com/2019/10/8/air-hand2-1-1570547534179594794992.jpg"),
        ],
      ),
    );
  }

  Widget _buildTopicCard(String title, String iconPath) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(iconPath, height: 50 , width: 50),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Icon(Icons.favorite, color: Colors.red),
        ],
      ),
    );
  }
}
