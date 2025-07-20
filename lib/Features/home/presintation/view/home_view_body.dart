import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/best_seller_listview_item.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/feature_books_listview.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarBody(),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Best Seller',
                  style: Style.textstyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        BestSellerListview()
      ],
    );
  }
}

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const BestSellerListviewItem(),
      ),
    );
  }
}
