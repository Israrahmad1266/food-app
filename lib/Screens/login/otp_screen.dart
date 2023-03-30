import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/welcome/Enter%20Details/enter_details.dart';

import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/otp_controllers.dart';
import 'package:home_foodie/widgets/otp_input.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Otpscreen extends StatelessWidget {
  Otpscreen({Key? key}) : super(key: key);

  OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Column(
            children: [
              Center(
                child: Text(
                  """We have sent an OTP to
          your Mobile""",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Text(
                  """Please check your mobile number 071*****12 
          continue to reset your password""",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Center(
                        child: OtpInput(
                            controller: otpController.otp[i],
                            autoFocus: i == 0 ? true : false))
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    otpController.otpDigits();

                    Get.offAll(() => EnterDetailsScreen());
                    otpController.results = '';
                  },
                  child: Container(
                    height: 7.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Didn't Receive? ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 13.sp)),
                TextSpan(
                    text: "Click Here",
                    style: TextStyle(
                        color: red,
                        fontWeight: FontWeight.w700,
                        fontSize: 13.5.sp))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
