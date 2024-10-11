import 'package:flutter/material.dart';
import 'package:flutter_v1/view/Home_Page/widget/section_title.dart';

import 'category_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search here',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.blue[50]
                      ),

                    ),
                  ),
                  const SizedBox(width: 20,),
                  const Icon(Icons.search,color: Colors.lightBlue,),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const SectionTitle(title: 'Categories', viewall: true,),
            const CategoryList(),
            const SizedBox(height: 30,),
            const SectionTitle(title: 'My Favourites'),
            const CategoryList(),
            const SizedBox(height: 30,),
            const SectionTitle(title: 'Recommend for you'),
            const CategoryList(),
            const SizedBox(height: 30,),
            const SectionTitle(title: 'New Release'),
            const CategoryList(),
          ],
        ),
      ),
    );
  }
}
