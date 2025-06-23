import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SizedBox(
    width: MediaQuery.of(context).size.width*0.35,
     child: AspectRatio(
      aspectRatio: 2.7/4,
       child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assetsdata.test),
          )
        ),
       ),
     ),
   );
  }
  
}