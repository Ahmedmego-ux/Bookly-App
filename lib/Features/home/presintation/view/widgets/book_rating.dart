import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      const Icon(
        FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),
        size: 18,
      ),
      const SizedBox(
        width: 6.3,
      ),
       Text(
        '$rating',
        style: Style.textstyle18,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        '($count)',
        style: Style.textstyle16.copyWith(color: const Color(0xff707070)),
      )
    ]);
  }
}
