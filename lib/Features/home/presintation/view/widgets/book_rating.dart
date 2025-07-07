import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget{
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      const Icon(FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F),size: 18, ),
      const SizedBox(width: 6.3,)
      ,const Text('4.2',style: Style.textstyle18,),
     const SizedBox(width: 5,)
      ,Text('(256)',style: Style.textstyle16.copyWith(color:const Color(0xff707070)),)
    ]);
  }
  
}