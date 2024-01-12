import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mychatai/src/fereture/home_page/home_page.dart';
import 'package:mychatai/src/model/on_boarding_model/on_boarding_model.dart';
import 'package:mychatai/src/utils/helper/helper_class.dart';
import 'package:mychatai/src/utils/image_constrant/image_constrant.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final pageController = PageController();

    final list = [
      OnBoardingModel(
          title: "free-to-use AI",
          subtitle: "AI resources provided at no cost for unrestricted usage and access.",
          lottie: onBoaringImageOne),
      OnBoardingModel(
          title: "free-to-use AI",
          subtitle: "AI resources provided at no cost for unrestricted usage and access.",
          lottie: onBoaringImageTwo),
    ];

    return Scaffold(
        body: PageView.builder(
          controller: pageController,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Lottie.asset(list[index].lottie, height: mediaquery.height * 0.6),
                  Text(
                    "${list[index].title}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: 0.5),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: mediaquery.width * 0.7,
                      child: Text(
                        "${list[index].subtitle}",
                        textAlign: TextAlign.center,
                      )),
                  Spacer(),
                  Wrap(
                    spacing: 10,
                    children: List.generate(
                        list.length,
                        (i) => Container(
                              width: i == index ? 40 : 10,
                              height: 8,
                              decoration:
                                  BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(5))),
                            )),
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        if(index == list.length - 1 ){


                          Get.to(HomePage());

                        }else{
                          pageController.nextPage(duration: Duration(microseconds: 600), curve: Curves.ease);

                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: StadiumBorder(),
                          elevation: 0,
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          minimumSize: Size(mediaquery.width * 0.4, 50)),
                      child: Text(
                        index == list.length - 1 ? "Start" : "Next",
                        style: TextStyle(color: Colors.white),
                      )),
                  Spacer(
                    flex: 2,
                  )
                ],
              );
            }));
  }
}
