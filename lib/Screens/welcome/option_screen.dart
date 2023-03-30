// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_foodie/Screens/signup/signup_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/option%20controller/option_controller.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class OptionScreen extends StatelessWidget {
  OptionScreen({Key? key}) : super(key: key);

  OptionController _controller = Get.put(OptionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                // clipBehavior: Clip.,
                height: 50.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  "lib/assets/images/bg2.png",

                  // scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 29.w),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "lib/assets/images/appLogo.png",
                    height: 20.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60.h),
                child: Form(
                  key: _controller.mobileKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: Text(
                          """           Discover the best foods from over 1,000 
                    restaurantsand fast delivery to your doorstep""",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: TextFormField(
                          controller: _controller.mobile,
                          validator: _controller.mobileValidator,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: primarytheme, width: 2.h),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              hintText: "Mobile Number/Email"),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: InkWell(
                          onTap: () {
                            _controller.checkMobile();
                          },
                          child: Container(
                            height: 8.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
