import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/feature_books_listview.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget{
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
          child:  Text('Best Seller',style: Style.Titlemedium,),
        )
      ],
    );
  }
}



