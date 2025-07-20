import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewItem extends StatelessWidget {
  final String imageurl;
  const CustomeListViewItem({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AspectRatio(
        aspectRatio: 1.8 / 2.4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageurl)),
              )),
        ),
    );
  }
}
