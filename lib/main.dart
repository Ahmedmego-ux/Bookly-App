import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      home:SplashView(),
    )
    ;
  }

}
 
      