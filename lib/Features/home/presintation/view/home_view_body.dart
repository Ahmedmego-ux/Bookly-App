import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarBody(),
        CustomeListViewItem(),
      ],
    );
  }
}


