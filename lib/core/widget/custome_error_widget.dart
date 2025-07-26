import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget{
  final String errmessage;

  const CustomeErrorWidget({super.key, required this.errmessage});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errmessage,style: Style.textstyle18,textAlign: TextAlign.center,));
  }
}