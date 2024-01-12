import 'package:flutter/material.dart';
import 'package:mychatai/src/fereture/home_page/home_page.dart';
import 'package:mychatai/src/fereture/on_boarding_screen/on_boarding_screen.dart';
import 'package:mychatai/src/utils/helper/helper_class.dart';
import 'package:mychatai/src/utils/image_constrant/image_constrant.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 2),(){
       Get.to(OnBoardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage(splashImage),
        width: mediaquery.width * 0.4,),
      ),

    );
  }
}
