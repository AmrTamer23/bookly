import 'package:flutter/material.dart';

import 'book_rating.dart';

class BestSellerBook extends StatelessWidget {
  const BestSellerBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.666,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1458747997i/22847284.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Flexible(
            // Wrap Column widget with Flexible
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Grokking Algorithms An Illustrated Guide For Programmers and Other Curious People",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontFamily: 'GT'),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Aditya Y. Bhargava",
                  style: TextStyle(
                      fontSize: 14, color: Colors.white.withOpacity(0.7)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "19.99\$",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: BookRating()),
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
