import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/custome_listview_item.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/core/widget/custom_books_action.dart';
import 'package:flutter/material.dart';

class bookdetailssection extends StatelessWidget {
  const bookdetailssection({super.key, required this.urlimage, required this.adress, required this.subtitle, required this.bookModel});
final String urlimage;
final String adress;
final String subtitle;
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomeBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.25, vertical: height * 0.03),
          child: CustomeListViewItem(imageurl: urlimage),
        ),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
           adress ,
            style: Style.textstyle30.copyWith(fontWeight: FontWeight.normal),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
         Opacity(
          opacity: 0.7,
          child: Center(
            child: Text(
              subtitle,
              style: Style.textstyle18,
              maxLines: 1,
                overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 25,
        ),
        bookbutton(bookModel: bookModel,),
      ],
    );
  }
}
