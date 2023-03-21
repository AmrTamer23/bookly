import 'package:bookly/core/models/book_model.dart';
import 'package:bookly/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../home/presentation/views/widgets/best_seller_book.dart';
import 'custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomTextField(
              hint: "Search",
              suffIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 19,
              ),
              onSubmitted: (data) {
                BlocProvider.of<SearchCubit>(context).search(clue: data!);
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Search Result",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
