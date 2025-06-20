import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

 class SplashViweBody extends StatelessWidget{
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Image.asset(Assetsdata.logo),

      ],
    );
  }
 }