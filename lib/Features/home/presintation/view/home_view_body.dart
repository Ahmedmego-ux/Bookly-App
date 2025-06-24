import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/best_seller_listview_item.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/feature_books_listview.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBarBody(),
       FeaturedBooksListView(),
        const SizedBox(height: 50,),
       const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child:  Text('Best Seller',style: Style.textstyle18,),
        ),
       const SizedBox(height: 20,),
        const BestSellerListview(),

      ],
    );
  }
}
class BestSellerListview extends StatelessWidget{
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*0.46,
    child: ListView.builder(
      shrinkWrap: false,
      itemBuilder: (context,Index){
      return const BestSellerListviewItem();
    }),);
  }
}


