import 'package:bookly/core/widgets/custom_error_alert.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: const LoadingIndicator(
              shimmerText: 'Analyzing your taste',
            ),
          );
        } else if (state is SimilarBooksDone) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.similarBooks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                            AppRouter.kBookDetailsViewRoute,
                            extra: state.similarBooks[index]);
                      },
                      child: CustomBookImage(
                        imageUrl: state.similarBooks[index].image,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorAlert(
            errMessage: state.errMessage,
          );
        } else {
          return Text("404");
        }
      },
    );
  }
}
