import 'package:booklyapp/Features/home/presintation/view/widgets/custome_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomeBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*0.24),
          child:  CustomeListViewItem(),
        ),

      ],
    );
  }
}
