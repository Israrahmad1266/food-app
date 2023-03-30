import 'dart:async';

import 'package:get/get.dart';
import 'package:home_foodie/Screens/welcome/onboarding_screen.dart';
import 'package:home_foodie/Screens/welcome/option_screen.dart';

class SplashController extends GetxController {

@override
  void onInit() {
    Timer(Duration(seconds: 5), (){
      Get.offAll(()=> OptionScreen());
    });
    super.onInit();
  }

}