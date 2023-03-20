import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../home/presentation/views/widgets/best_seller_book.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomTextField(
            hint: "Search",
            suffIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 19,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: BestSellerBook(
              book: Book(
                  authors: '',
                  id: '',
                  image: '',
                  subtitle: '',
                  title: '',
                  url: ''),
            ),
          );
        }));
  }
}
