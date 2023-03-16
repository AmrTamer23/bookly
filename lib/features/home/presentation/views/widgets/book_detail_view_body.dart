import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'books_actions.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_details_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50, right: 30, left: 30),
          child: CustomBookDetailsAppBar(),
        ),
        const SizedBox(
          height: 36,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: const CustomBookImage()),
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
