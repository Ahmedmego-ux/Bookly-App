import 'package:booklyapp/Features/home/presintation/view/widgets/book_details_section.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/similar_books_scrol_view.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const bookdetailssection(),
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
