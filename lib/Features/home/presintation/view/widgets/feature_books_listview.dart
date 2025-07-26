import 'package:booklyapp/Features/home/presintation/manger/featuredbookscubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:booklyapp/core/widget/custome_error_widget.dart';
import 'package:booklyapp/core/widget/loadin_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if(state is FeaturedBookssuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                 itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, Index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                         GoRouter.of(context).push('/bookdetails',extra: state.books[Index]);
                      },
                      child: CustomeListViewItem(
                        imageurl:state.books[Index].volumeInfo.imageLinks.thumbnail
                      ),
                    ),
                  );
                }),
          );
        }else if(state is FeaturedBooksfailure){
          return CustomeErrorWidget(errmessage: state.errmessage);

        }else{
          return Customeloadingindicator();
        }
        
        
        },
      ),
    );
  }
}
