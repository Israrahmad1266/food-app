import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  String results = '';
List<TextEditingController> otp =[
  TextEditingController(),
  TextEditingController(),
  TextEditingController(),
  TextEditingController()
];

void otpDigits(){
  for(int i=0; i< 4; i++){
    results += otp[i].text;
  }
}
}