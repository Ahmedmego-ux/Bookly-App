import 'package:booklyapp/Features/home/presintation/view/widgets/app_bar_body.dart';

import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
      
        AppBarBody(),
        SizedBox(height: 10,)
        
      ],
    );
  }
}

