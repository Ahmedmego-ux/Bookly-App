import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presintation/manger/similar_books_cubit/similarbooks_cubit.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel, });
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {



  _BookDetailsViewState();
  @override
  void initState() {
  final categories = widget.bookModel.volumeInfo.categories;
if (categories != null && categories.isNotEmpty) {
  BlocProvider.of<SimilarbooksCubit>(context)
      .fetchsimilarBooks(categories: categories[0]);
}

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
