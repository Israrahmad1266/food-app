// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';

import 'menu_screen.dart';

class MenuListScreen extends StatelessWidget {
  MenuListScreen({Key? key}) : super(key: key);

  List<String> popluar = [
    "lib/assets/images/breakfast.png",
    "lib/assets/images/pizza.png",
    "lib/assets/images/snacks.png",
    "lib/assets/images/snacks.png",
  ];
  List<String> title = ["Food", "Beverages", "Desserts", "Promotions"];
  List<String> subTitile = ['120 Items', "220 Items", "155 Items", "155 Items"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      ),
                      Spacer(),
                      SvgPicture.asset("lib/assets/images/cart.svg")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    // height: 7.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: textfieldColor,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 4.h,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search food"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "lib/assets/images/Side bar orange.png",
                    scale: 3.2,
                    color: Color(0xff146321),
                  ),
                ),
              ],
            ),
            Positioned.fill(
                top: 15.h,
                left: 0.w,
                right: 5.w,
                child: SizedBox(
                  height: 50.h,
                  width: 65.w,
                  child: ListView.builder(
                      itemCount: popluar.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => MenuScreen());
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.sp),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 14.w),
                                      height: 14.h,
                                      width: 75.w,
                                      // ignore: prefer_const_constructors
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(26),
                                              bottomLeft: Radius.circular(26),
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.blueGrey,
                                                blurRadius: 5)
                                          ]),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            title[index],
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            subTitile[index],
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: textColor),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.h),
                                    child: Container(
                                      height: 10.h,
                                      width: 10.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blueGrey,
                                              blurRadius: 5,
                                            )
                                          ],
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image:
                                                  AssetImage(popluar[index]))),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.h),
                                    child: Container(
                                      height: 10.h,
                                      width: 10.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blueGrey,
                                              blurRadius: 5,
                                            )
                                          ],
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image:
                                                  AssetImage(popluar[index]))),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 3.h,
                                  right: 0,
                                  child: Container(
                                    height: 5.h,
                                    width: 5.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blueGrey,
                                          blurRadius: 5,
                                        )
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff146321),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
