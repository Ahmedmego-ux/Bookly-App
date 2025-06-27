import 'package:booklyapp/constans.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListviewItem extends StatelessWidget{
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.6/4,
                 child: Container(
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assetsdata.test),
            )
                  ),
                 ),
               ),
               const SizedBox(width: 30,),
               Expanded(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child:Text('Harry Potter and the Goblet of Fire',style: Style.textstyle20.copyWith(fontFamily: kGTSectraFine),
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,)),
                      const SizedBox(height: 3,),
                      const Text('J.K. Rowling',style: Style.textstyle14,
                      ),
                      const SizedBox(height: 3,),
                      Row(children: [
                      Text('19.99 €',style: Style.textstyle20.copyWith(fontWeight: FontWeight.bold),),
                      const Spacer(),
                       const  BookRating(),
                       const  Spacer(),
                 
                 
                      ],)
                  ],
                 ),
               )
          ],
        ),
      ),
    );
  }
}
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
