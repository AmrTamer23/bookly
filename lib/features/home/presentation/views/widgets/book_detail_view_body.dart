import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/service_locater.dart';
import '../../../../../core/models/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';
import 'books_actions.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'books_details_section.dart';
import 'custom_details_app_bar.dart';
import 'similar_books_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: CustomBookDetailsAppBar(),
                ),
                const SizedBox(
                  height: 36,
                ),
                BookDetailsSection(
                  book: book,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                const SimilarBooksSection(),
              ],
            ),
          )
        ],
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
