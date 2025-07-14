import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: ListView.builder(
            // itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, Index) {
              return CustomeListViewItem();
            }),
      ),
    );
  }
}
