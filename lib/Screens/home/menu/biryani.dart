// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter_svg/svg.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/biryani_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'my_order/my_order_screen.dart';

class BiryaniScreen extends StatelessWidget {
  BiryaniScreen({Key? key}) : super(key: key);

  BiryaniController controller = Get.put(BiryaniController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                "lib/assets/images/breakfast.png",
                height: 30.h,
                // fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: 26.h
              ),
              child: Container(
                height: 70.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(
                          "Chicken Biryani",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: SizedBox(
                          height: 2.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext, index) {
                                return Row(
                                  children: [
                                    Icon(
                                      index < 4
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  ],
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 1.7.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4 Star Ratings",
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            Spacer(),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "Rs. 750\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.sp)),
                              TextSpan(
                                  text: "        / per Portion",
                                  style: TextStyle(
                                      color: textColor, fontSize: 10.sp))
                            ]))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.sp),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada'''),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "Customize your Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.sp),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: textfieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      " Select Salt Level",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Spacer(),
                                    Obx(
                                      () => Slider(
                                          value: controller.level.value,
                                         
                                          max: 20.0,
                                          onChanged: controller.onchanged),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: textfieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "select species level",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Spacer(),
                                    Obx(
                                      ()=> SizedBox(
                                        width: 47.w,
                                        child: Slider(
                                          max: 14.0,
                                          value: controller.spices.value, onChanged: controller.onSpiceChanged),
                                      ),
                                    )
                                   ],
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: textfieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "- Select the size of portion -",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                        "lib/assets/images/downArrow.svg")
                                  ],
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                color: textfieldColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "- Select the ingredients -",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                        "lib/assets/images/downArrow.svg")
                                  ],
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            children: [
                              Text(
                                "Number of Portions",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13.sp),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  controller.deduction();
                                },
                                child: Container(
                                  height: 5.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      color: primarytheme,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                height: 5.h,
                                width: 15.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 0.6.w,
                                      color: primarytheme,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                    child: Text(
                                        controller.portion.value.toString())),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.addition();
                                },
                                child: Container(
                                  height: 5.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      color: primarytheme,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "lib/assets/images/Rectangle 17326.svg",
                                  color: primarytheme,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            ),
                            Positioned(
                                top: 4.h,
                                left: 10.w,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => MyOrderScreen());
                                  },
                                  child: Container(
                                    height: 16.h,
                                    width: 77.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blueGrey,
                                            blurRadius: 4,
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Total Price",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 0.7.h,
                                        ),
                                        Text(
                                          "INR 750",
                                          style: TextStyle(
                                              fontSize: 21.sp,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Center(
                                          child: Container(
                                            height: 4.h,
                                            width: 50.w,
                                            decoration: BoxDecoration(
                                                color: primarytheme,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.w),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "lib/assets/images/Group 8089.png",
                                                    height: 3.h,
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      // fontSize:
                                                    ),
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 9.h, left: 80.w),
                              child: Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blueGrey,
                                      blurRadius: 4,
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.sp),
                                  child: SvgPicture.asset(
                                    "lib/assets/images/shopping-cart.svg",
                                    color: primarytheme,
                                    height: 5.h,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 23.h,
              right: 2.w,
              child: Image.asset(
                "lib/assets/images/Add to favorites button.png",
                height: 8.h,
                width: 8.h,
              ),
            ),
            Positioned(
                top: 3.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 4.h,
                        ),
                      ),
                      SizedBox(
                        width: 74.w,
                      ),
                      SvgPicture.asset(
                        "lib/assets/images/cart.svg",
                        height: 3.h,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
