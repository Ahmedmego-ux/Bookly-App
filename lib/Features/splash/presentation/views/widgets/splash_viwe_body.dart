import 'package:booklyapp/Features/home/presintation/view/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/constans.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

 class SplashViweBody extends StatefulWidget{
  const SplashViweBody({super.key});
  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}
class _SplashViweBodyState extends State<SplashViweBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation <Offset>slidinganimation;
  @override
  void initState() {
    super.initState();
    initanimationcontroler();
    NavigatortoHome();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        SvgPicture.asset(Assetsdata.logo,
        height: 60,width: 100,color: Colors.white,),
    
         const SizedBox(height:6,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:70),
          child: SlidingText(slidinganimation: slidinganimation),
        ),
      ],
    );
  }
  void initanimationcontroler() {
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    slidinganimation =Tween<Offset>(begin: Offset(0, 2),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
  void NavigatortoHome() {
     Future.delayed(Duration(seconds: 2),(){
    Get.to(()=>HomeView(),transition:Transition.fade,duration: ktranstionduration );
    });
  }
}

