import 'package:booklyapp/Features/home/presintation/view/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';

import 'package:booklyapp/Features/home/presintation/view/widgets/similar_books_scrol_view.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/core/widget/custom_books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
     var height =MediaQuery.of(context).size.height;
     return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomeBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*0.25 ,vertical: height*0.03),
          child:  const CustomeListViewItem(),
        ),
      const SizedBox(height: 12,),
                
                 Center(
                   child: Text('The Jungle Book ',style: Style.textstyle30.copyWith(fontWeight: FontWeight.normal),
                   maxLines:2,
                    overflow: TextOverflow.ellipsis,),
                 ),
                   const SizedBox(height: 6,),
                   const Opacity(
                      opacity: 0.7,
                      child: Center(
                        child: Text('Rudyard Kipling',style: Style.textstyle18,
                         ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                     BookRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                     ),
                     const SizedBox(height: 25,),
                     bookbutton(),
                    const Expanded(child: SizedBox(height: 35,)),
                     Text('You can also like',style: Style.textstyle16.copyWith(fontWeight: FontWeight.w700),),
                     const SizedBox(height:10,),
                      const similarbookslistview(),
                      const SizedBox(height: 20,)
      ],
    ),
        )
      ],
     );
    
  }
}

