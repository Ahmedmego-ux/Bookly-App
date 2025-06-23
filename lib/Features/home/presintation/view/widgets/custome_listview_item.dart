import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return AspectRatio(
    aspectRatio: 2.7/4,
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