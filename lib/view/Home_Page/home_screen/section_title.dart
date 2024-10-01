import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool viewall;
  const SectionTitle({super.key, required this.title, this.viewall=false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ,
          style: const TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
          ),
        ),
        if (viewall)
          TextButton(
            onPressed: () {

            },
            child: const Text('View all',style: TextStyle(color: Colors.grey,fontSize: 20),),
          ),
      ],
    );
  }
}
