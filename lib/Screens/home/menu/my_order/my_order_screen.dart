// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/home/menu/my_order/checkout/apply%20coupon/apply_coupoon_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'checkout/check_out_screen.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 3.h,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      "My Order",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 3,
                            )
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("lib/assets/images/burger.png"))),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "King Burgers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: primarytheme,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "4.9",
                                  style: TextStyle(
                                      color: primarytheme,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14.sp)),
                              TextSpan(
                                  text: "  (124 ratings)",
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10.sp))
                            ]))
                          ],
                        ),
                        SizedBox(
                          height: 0.4.h,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Burger",
                              style:
                                  TextStyle(color: textColor, fontSize: 12.sp)),
                          TextSpan(
                              text: ".",
                              style: TextStyle(
                                  color: primarytheme,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "  Western Food",
                              style:
                                  TextStyle(color: textColor, fontSize: 12.sp))
                        ])),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: primarytheme,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "No 03, 4th Lane, Newyork",
                                  style: TextStyle(
                                      color: textColor, fontSize: 11.sp)),
                            ]))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger x1",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: textColor),
                    ),
                    Spacer(),
                    Text(
                      "\$16",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  height: 0.6.h,
                  thickness: 0.1.h,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger x1",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: textColor),
                    ),
                    Spacer(),
                    Text(
                      "\$16",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  height: 0.6.h,
                  thickness: 0.1.h,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger x1",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: textColor),
                    ),
                    Spacer(),
                    Text(
                      "\$16",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  height: 0.6.h,
                  thickness: 0.1.h,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger x1",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: textColor),
                    ),
                    Spacer(),
                    Text(
                      "\$16",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  height: 0.6.h,
                  thickness: 0.1.h,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beef Burger x1",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: textColor),
                    ),
                    Spacer(),
                    Text(
                      "\$16",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  height: 0.6.h,
                  thickness: 0.1.h,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 1.h,
                ),
                InkWell(
                  onTap: (){
                      Get.bottomSheet(
                           getInstruction()
                            // isScrollControlled: true,
                          );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Add Cooking Instruction ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                      Spacer(),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Instrusctions",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Icon(
                      Icons.add,
                      color: primarytheme,
                    ),
                    Spacer(),
                    Text(
                      "Add Notes",
                      style: TextStyle(color: primarytheme, fontSize: 13.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => ApplyCouponScreen());
                  },
                  child: PhysicalModel(
                    color: Colors.blueGrey,
                    elevation: 3,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.w,
                        ),
                        height: 7.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset("lib/assets/images/discount.png"),
                            Text(
                              "Apply Coupon",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: primarytheme,
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Text(
                      "Sub Total",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      "\$68",
                      style: TextStyle(
                          color: primarytheme,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Text(
                      "Delivery Cost",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      "\$68",
                      style: TextStyle(
                          color: primarytheme,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                    Spacer(),
                    Text(
                      "\$70",
                      style: TextStyle(
                          color: primarytheme,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => CheckOutScreen());
                  },
                  child: Center(
                    child: Container(
                      height: 7.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: primarytheme,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          "Checkout",
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
                  height: 6.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DraggableScrollableSheet getInstruction() {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, ScrollController controller) => SingleChildScrollView(
        controller: controller,
        child: Container(
          color: Colors.white,
          height: 40.h,
          width: 100.w,
          child: Padding(
            padding:  EdgeInsets.symmetric(
              vertical: 1.42.h,
              horizontal: 2.w
            ),
            child: Column(
              children: [
              Row(
                children: [
                  Text("Special Cooking Instructions",
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.close))
                ],
              ),
              SizedBox(
                height: 1.h
                ,
              ),
              TextField(
                maxLength: 100,
                decoration: InputDecoration(
      
                ),
              ),
              Text("""The Restaurant will follow your Instructions on the best effort basis. NO refunds or cancellations will be processed based on failure to comply with request for special instructions. """,
      style: TextStyle(
        color: Colors.red
      )
      ),
      
      SizedBox(
        height: 3.h,
      ),
         InkWell(
                    onTap: () {
                     Get.back();
                    },
                    child: Center(
                      child: Container(
                        height: 7.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: primarytheme,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "Add",
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
              ],
            ),
          ),
        ),
      )
    );
  }
}
