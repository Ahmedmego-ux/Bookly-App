import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class similarbookslistview extends StatelessWidget{
  const similarbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.only(left: 14),
    child: SizedBox(
      height:  MediaQuery.of(context).size.height*0.16,
      child: ListView.builder(
       // itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context,Index){
        return CustomeListViewItem();
      }),
    ),
  );
  }
  
}