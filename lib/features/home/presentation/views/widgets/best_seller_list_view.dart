import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20, right: 24, left: 24),
            child: BestSellerBook(),
          );
        }));
  }
}
