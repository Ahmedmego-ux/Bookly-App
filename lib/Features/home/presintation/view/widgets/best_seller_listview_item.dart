import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presintation/view/widgets/book_rating.dart';
import 'package:booklyapp/constans.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookdetails',extra: bookModel);
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
        aspectRatio: 1.8 / 2.4,
        child:CachedNetworkImage(
          placeholder: (context, url) =>const Center(child:  CircularProgressIndicator()),
          errorWidget: (context, url, error) =>const Icon(Icons.error),
          fit: BoxFit.fill,
          imageUrl:bookModel.volumeInfo.imageLinks.thumbnail  )
          ,),
               
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            bookModel.volumeInfo.title!,
                            style: Style.textstyle20
                                .copyWith(fontFamily: kGTSectraFine),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                       Text(
                        bookModel.volumeInfo.authors!.first,
                        style: Style.textstyle14,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: Style.textstyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        const  SizedBox(width: 10),
                          BookRating(
                            rating: 4,
                            count: bookModel.volumeInfo.pageCount!,
                          ),
                          const Spacer(),
                        ],
                      )
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
