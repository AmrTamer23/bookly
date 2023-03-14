import 'package:flutter/material.dart';

class FeaturedListViewBookItem extends StatelessWidget {
  const FeaturedListViewBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6696,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.27,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1458747997i/22847284.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
