import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

 class SplashViweBody extends StatelessWidget{
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        SvgPicture.asset(Assetsdata.logo,
        color: Colors.white,
        height: 60,width: 100,),
         const SizedBox(height: 6,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:70),
          child: const Text('Read Free Books',
          textAlign:TextAlign.end,),
        ),
      ],
    );
  }
 }