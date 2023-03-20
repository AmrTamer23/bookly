import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'books_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, this.id});
  final id;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: const CustomBookImage(
              imageUrl: '',
            )),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Grokking Algorithms An Illustrated Guide For Programmers and Other Curious People",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'GT',
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Aditya Y. Bhargava",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white.withOpacity(0.7),
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 37),
          child: BookActions(),
        ),
      ],
    );
  }
}
