import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
GlobalKey<FormState> newPassordForm = GlobalKey<FormState>();
TextEditingController password = TextEditingController();
TextEditingController confirmpass = TextEditingController();

String ? passwordValidation(value){
  if (value == '') {
    return 'Please Enter a valid Password';
  }
  return null;
}

String ? confirmPassword(value){
  if (value== '' || value != password.text) {
    return 'Please Confir your password!';
  }
  return null;
}

void checkPassword(){
  final isvalidate = newPassordForm.currentState!.validate();
  if (!isvalidate) {
    return;
  } else {
  }
}
}