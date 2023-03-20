import 'package:bookly/core/widgets/custom_error_alert.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: const LoadingIndicator(),
          );
        } else if (state is FeaturedBooksDone) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.featuredBooks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageLink: state.featuredBooks[index].image,
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return const ErrorAlert(
            errMessage: "Error",
          );
        } else {
          return Text("404");
        }
      },
    );
  }
}
