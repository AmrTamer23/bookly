import 'package:flutter/material.dart';

import 'featured_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text(
                "You can also like",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 40),
          child: SizedBox(height: 140, child: FeaturedBooksListView()),
        ),
      ],
    );
  }
}
