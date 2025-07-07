import 'package:booklyapp/Features/home/presintation/view/widgets/book_rating.dart';
import 'package:booklyapp/constans.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListviewItem extends StatelessWidget{
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookdetails');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
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
                             BookRating(),
                           const  Spacer(),
                     
                     
                          ],)
                      ],
                     ),
                   )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

