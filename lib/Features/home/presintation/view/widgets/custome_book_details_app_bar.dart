import 'package:flutter/material.dart';

class CustomeBookDetailsAppBar extends StatelessWidget{
  const CustomeBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon:const  Icon(Icons.close)),
           IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_checkout_outlined))
        ],
      ),
    );
  }
  
}