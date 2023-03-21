import 'package:bookly/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/book_model.dart';
import '../../../../../core/widgets/custom_error_alert.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../home/presentation/views/widgets/best_seller_book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: const LoadingIndicator(
              shimmerText: 'Searching For You',
            ),
          );
        } else if (state is SearchDone) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.searchBooks.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: BestSellerBook(
                    book: state.searchBooks[index],
                  ),
                );
              }));
        } else if (state is SearchFailure) {
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
