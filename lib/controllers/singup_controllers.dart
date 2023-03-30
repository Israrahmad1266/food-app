
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:home_foodie/Screens/home/bottom_bar_screen.dart';

class SignUpcontroller extends GetxController {
  GlobalKey<FormState> registrationKey = GlobalKey<FormState>();
TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController mobile = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirmpass = TextEditingController();

@override
  void onInit() {
    name;
    email;
    mobile;
    address;
    password;
    confirmpass;
    super.onInit();
  }

  @override
  void onClose() {
    name;
    email;
    mobile;
    address;
    password;
    confirmpass;
    super.onClose();
  }
  String? namevalidator(value){
    if (value == '') {
      return 'Enter your name';
    }
    return null;
  }
   String? emailvalidator(value){
    if (!GetUtils.isEmail(value)) {
      return 'Enter your email!';
    }
    return null;
  }
   String? addressvalidator(value){
    if (value == '') {
      return 'Enter your adress!';
    }
    return null;
  }
   String? mobilevalidator(value){
    if (value == '') {
      return 'Enter your mobile number!';
    }
    return null;
  }
   String? passworvalidator(value){
    if (value == ''|| value.length <=5) {
      return 'Enter password more than 5 digits!';
    }
    return null;
  }
    String? confirmpassworvalidator(value){
    if (value != password.text) {
      return 'Confirm your Password!';
    }
    return null;
  }
  void checkRegister(){
  final isValidate = registrationKey.currentState!.validate();
  if (!isValidate) {
    return;    
  } else {
    Get.offAll(()=> BottomBaarScreen());

  }
  registrationKey.currentState!.save();
  }
}