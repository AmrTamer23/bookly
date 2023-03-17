import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'books_actions.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'books_details_section.dart';
import 'custom_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: CustomBookDetailsAppBar(),
                ),
                SizedBox(
                  height: 36,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          )
        ],
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
