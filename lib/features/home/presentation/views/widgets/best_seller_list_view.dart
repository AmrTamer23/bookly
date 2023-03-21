import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_alert.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksLoading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: const LoadingIndicator(
              shimmerText: 'For You',
            ),
          );
        } else if (state is BestSellerBooksDone) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.bestSellerBooks.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 24, left: 24),
                  child: BestSellerBook(
                    book: state.bestSellerBooks[index],
                  ),
                );
              }));
        } else if (state is BestSellerBooksFailure) {
          return ErrorAlert(
            errMessage: state.errMessage,
          );
        } else {
          return const Text("404");
        }
      },
    );
  }
}
