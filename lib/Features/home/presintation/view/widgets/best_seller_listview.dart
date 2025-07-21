import 'package:booklyapp/Features/home/presintation/manger/bestsrllerbooks/best_seller_books_cubit.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/best_seller_listview_item.dart';
import 'package:booklyapp/core/widget/custome_error_widget.dart';
import 'package:booklyapp/core/widget/loadin_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if(state is BestSellerBookssuccess){
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
           itemBuilder: (BuildContext context, int index) {  
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BestSellerListviewItem(bookModel: state.books[index],),
            );
           },
          
         
        );}else if(state is BestSellerBooksfailure){
         return CustomeErrorWidget(errmessage: state.errmessage,);
        }else {
          return Customeloadingindicator();
        }
      },
    );
  }
}
