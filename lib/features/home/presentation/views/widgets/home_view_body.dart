import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'best_seller_book.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 24, left: 24),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 15,
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Best Seller",
                  style: Styles.titleM,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
