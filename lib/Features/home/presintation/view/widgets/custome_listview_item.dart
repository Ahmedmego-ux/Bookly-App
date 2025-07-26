
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeListViewItem extends StatelessWidget {
  final String imageurl;
  const CustomeListViewItem({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(16) ,
        child: AspectRatio(
          aspectRatio: 1.6/ 2.4,
          child:CachedNetworkImage(
            placeholder: (context, url) =>const Center(child:  CircularProgressIndicator()),
            errorWidget: (context, url, error) =>const Icon(Icons.error),
            fit: BoxFit.fill,
            imageUrl:  imageurl),
          ),
      ),
    );
  }
}
