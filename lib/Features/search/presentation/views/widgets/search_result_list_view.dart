import 'package:booklyapp/Features/home/presintation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class searchresultlistview extends StatelessWidget {
  const searchresultlistview({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return BestSellerListviewItem();
      },
    );
  }
}
