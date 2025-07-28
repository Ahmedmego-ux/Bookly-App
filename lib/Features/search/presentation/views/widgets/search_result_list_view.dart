
import 'package:booklyapp/Features/home/presintation/view/widgets/best_seller_listview_item.dart';
import 'package:booklyapp/Features/search/data/searchcubit/search_cubit.dart';
import 'package:booklyapp/core/widget/custome_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is Searchloading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is Searchsuccess) {
          final books = state.books;

          if (books.isEmpty) {
            return const Center(child: Text('No results found.'));
          }

          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              return BestSellerListviewItem(bookModel: books[index]);
            },
          );
        } else if (state is Searchfailur) {
          return CustomeErrorWidget(errmessage: state.errmessage,);
        } else {
          return const Center(child: Text('ابدأ البحث عن كتاب 🔍'));
        }
      },
    );
  }
}
