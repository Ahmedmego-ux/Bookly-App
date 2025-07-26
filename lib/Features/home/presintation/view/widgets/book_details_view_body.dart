import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/book_details_section.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/similar_books_scrol_view.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bookdetailssection(urlimage: bookModel.volumeInfo.imageLinks.thumbnail,
              adress: bookModel.volumeInfo.title!,
              subtitle: bookModel.volumeInfo?.subtitle??'', bookModel: bookModel,
              ),
              const Expanded(
                  child: SizedBox(
                height: 35,
              )),
              Text(
                'You can also like',
                style: Style.textstyle16.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const similarbookslistview(),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
