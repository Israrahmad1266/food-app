
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:home_foodie/Screens/home/bottom_bar_screen.dart';

class LoginController extends GetxController {
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
final GlobalKey<FormState> loginform = GlobalKey<FormState>();
@override
  void onInit() {
    email;
    password;

    super.onInit();
  }
  @override
  void dispose() {
    email;
    password;
    super.dispose();
  }

 String ? emailValidator( value){
    if (!GetUtils.isEmail(value)) {
      return 'provide a valid email !';
    }
    return null;
  }

  String ? passwordvalidartor(String? value){
    if( value!.length <= 6 ){
      return 'enter password more than 5 digits';
    }
    return null;
  }
  void checkLogin(){
    final isValidate = loginform.currentState!.validate();
    if (!isValidate) {
    return;  
    } 
    else {
      Get.offAll(()=> BottomBaarScreen());
    }
    loginform.currentState!.save();
  }
  
}