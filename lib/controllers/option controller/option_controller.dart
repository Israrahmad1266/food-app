import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:home_foodie/Screens/login/otp_screen.dart';

class OptionController extends GetxController {
  GlobalKey<FormState> mobileKey = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();

  String ? mobileValidator(value){
    if (value.length !=10) {
      return 'Please Enter Your mobile Number';
    } else {
      return null;
    }
  }

void checkMobile(){
  final validator = mobileKey.currentState!.validate();
  if (!validator) {
    return;
  } else {
    Get.to(()=> Otpscreen());
  }
}

}