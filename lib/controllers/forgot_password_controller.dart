
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:home_foodie/Screens/login/otp_screen.dart';

class ForgotPassowrdController extends GetxController {
GlobalKey<FormState> forgotPassowrdKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
@override
  void onInit() {
    emailController;
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onClose() {
    emailController;
    // TODO: implement onClose
    super.onClose();
  }

  String ? validateEmail(value){
    if (!GetUtils.isEmail(value)) {
      return 'provide a valid email !';
    }
    return null;
  }

 void checkEmail(){
   final isvalidate = forgotPassowrdKey.currentState!.validate();
   if (!isvalidate) {
     return;
   }
   else{
     Get.to(()=> Otpscreen() );
   }
   forgotPassowrdKey.currentState!.save();

  }
}