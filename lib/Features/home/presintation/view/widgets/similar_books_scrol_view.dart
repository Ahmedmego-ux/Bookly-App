import 'package:booklyapp/Features/home/presintation/manger/similar_books_cubit/similarbooks_cubit.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:booklyapp/core/widget/custome_error_widget.dart';
import 'package:booklyapp/core/widget/loadin_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class similarbookslistview extends StatelessWidget {
  const similarbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
      builder: (context, state) {
        if (state is Similarbookssucess) {
  return Padding(
    padding: const EdgeInsets.only(left: 14),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
           itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return CustomeListViewItem(
              imageurl:state.books[Index].volumeInfo.imageLinks?.thumbnail??'',
              );
                  
          }),
    ),
  );
}else if(state is Similarbooksfailure){
  return CustomeErrorWidget(errmessage: state.errmessage);
}else{
  return Customeloadingindicator();
}
      },
    );
  }
}
