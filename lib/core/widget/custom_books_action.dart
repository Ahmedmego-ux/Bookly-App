import 'package:flutter/material.dart';

class bookbutton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
         width: 150,
         height: 50,
         decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomLeft: Radius.circular(16)),
           color:Colors.white
         ),
         child:const  Center(child: Text("19.99€",style: TextStyle(color: Colors.black,fontSize: 18),)),
                ),
       
         Container(
          width: 150,
          height: 50,
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight: Radius.circular(16)),
            color:Color(0xffEF8262)
          ),
          child:const  Center(child: Text("Free preview",style: TextStyle(color: Colors.white,fontSize: 18),)),
        ),

      ],
    );
  }
  
}