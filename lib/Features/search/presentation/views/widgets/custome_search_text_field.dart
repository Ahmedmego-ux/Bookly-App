import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customsearchtextfeild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  TextField(
    
    decoration: InputDecoration(
      focusedBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white
        )
        
      ), 
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white
        )
        
      ),
    
      hintText: "Search",
      suffixIcon: Opacity(
        opacity: 0.8,
        child: IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 24, ),
         ),
      ),
    ),
  );
}}