
import 'package:flutter/material.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key,required this.controller,required this.autoFocus}) : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 7.h,
        width: 18.w,
        decoration: BoxDecoration(
          color: textfieldColor,
          
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: TextField(
          obscureText: true,
          obscuringCharacter: "*",

          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
            focusColor: Colors.black,
          ),
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          onChanged: (value) {
            if (value.length ==1){
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
