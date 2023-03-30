import 'package:flutter/material.dart';
import 'package:home_foodie/controllers/splash_controllers.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({Key? key}) : super(key: key);

  SplashController _controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Image.asset("lib/assets/images/appLogo.png", height: 23.h),
            )
          ],
        ),
      ),
    );
  }
}
