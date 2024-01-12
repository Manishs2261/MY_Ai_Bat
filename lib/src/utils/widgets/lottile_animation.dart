import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:mychatai/src/utils/image_constrant/image_constrant.dart';

class CustomeLoading extends StatelessWidget {
  const CustomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(loadingAnimation);
  }
}
