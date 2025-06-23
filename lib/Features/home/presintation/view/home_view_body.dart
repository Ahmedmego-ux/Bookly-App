import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarBody(),
        FeaturedBooksListView()
      ],
    );
  }
}
class FeaturedBooksListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height:  MediaQuery.of(context).size.height*0.28,
    child: ListView.builder(
     // itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder:(context,Index){
      return CustomeListViewItem();
    }),
  );
  }
  
}


