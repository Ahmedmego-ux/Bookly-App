import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewItem extends StatelessWidget{
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
   return AspectRatio(
    aspectRatio: 1.9/2.6,
     child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assetsdata.test),
        )
      ),
     ),
   );
  }
  
}