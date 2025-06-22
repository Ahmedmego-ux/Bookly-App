import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarBody extends StatelessWidget {
  const AppBarBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Row(
        children: [
          SvgPicture.asset(Assetsdata.logo,
      height:23,width: 30,color: Colors.white,),
      const Spacer(),
      IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass),iconSize: 26,)
        ],
      ),
    );
  }
}