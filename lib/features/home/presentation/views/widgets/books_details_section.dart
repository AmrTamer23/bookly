import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/book_model.dart';
import 'books_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: CustomBookImage(
              imageUrl: book.image,
            )),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            book.title,
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'GT',
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.authors,
          textAlign: TextAlign.center,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: BookActions(
            link: book.url,
          ),
        ),
      ],
    );
  }
}
