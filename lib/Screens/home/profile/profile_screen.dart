// ignore_for_file: prefer_const_constructors

import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "lib/assets/images/cart.svg",
                    height: 2.6.h,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Image.asset(
              "lib/assets/images/Profile picture.png",
              height: 15.h,
            ),
            SizedBox(
              height: 1.3.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: primarytheme,
                ),
                SizedBox(
                  width: 0.5.w,
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(color: primarytheme, fontSize: 10.sp),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Hi there Akila!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            // Text(
            //   "Sign Out",
            //   style: TextStyle(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 10.sp,
            //   ),
            // ),
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "Emilia Clarke",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "emiliaclarke@email.com",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Mobile No",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "991195503368",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "No 23, 6th Lane, Colombo 03",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "**************",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Container(
                height: 7.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: textfieldColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          "Confirm Password",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "**************",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 7.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: primarytheme,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Text(
                      "Sign Out",
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
              height: 19.h,
            )
          ],
        ),
      )),
    );
  }
}
