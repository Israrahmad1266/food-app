import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:home_foodie/Screens/welcome/onboarding_screen.dart';

class DetailsController extends GetxController {
GlobalKey<FormState> detailsKey = GlobalKey<FormState>();
TextEditingController name = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController pincode = TextEditingController();

String ? nameValidator(value){
  if (value == '') {
    return 'Please enter your name';
  } else {
    return null;
  }
}

String ? addressValidator(value){
  if (value == '') {
    return 'Please enter your address';
  } else {
    return null;
  }
}
String ? pinValidator(value){
  if (value == '') {
    return 'Please enter your PIncode';
  } else {
    return null;
  }
}

detailValidator(){
  final validator = detailsKey.currentState!.validate();
  if (!validator) {
    return;
  } else {
    Get.offAll(()=> OnboardingScreen());
  }
}
}