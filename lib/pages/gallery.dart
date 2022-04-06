import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List pictures = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: 24,
        itemBuilder: (context, index) {
          if (index > 2) {
            return Padding(padding: const EdgeInsets.all(8.0), child: Image.asset(pictures[index % 3]));
          } else {
            return Padding(padding: const EdgeInsets.all(8.0), child: Image.asset(pictures[index]));
          }
        });
  }
}
