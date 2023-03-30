// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_foodie/Screens/home/homePage/popular%20resturant/resturant%20details/resturant_details.dart';
import 'package:home_foodie/Screens/home/menu/my_order/my_order_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class PopularResturantScreen extends StatelessWidget {
  PopularResturantScreen({Key? key}) : super(key: key);

  List<String> resturants = [
    "lib/assets/images/aOne.png",
    "lib/assets/images/cafe.png",
    "lib/assets/images/bar.png",
    "lib/assets/images/chewy.png",
    "lib/assets/images/resturant.png",
    "lib/assets/images/sreetShake.png",
    "lib/assets/images/taj.png"
  ];
  List<String> name = [
    "A One Resturent",
    "Taj Resturent",
    "Buick Resturent",
    "Fudgy Chewy Brownies Resturent",
    "French Apple Pie",
    "Dark Resturent",
    "Street Shake Resturent"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey[800],
                        size: 3.4.h,
                      ),
                    ),
                    Text(
                      "Resturent",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xFF4A4B4D),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => MyOrderScreen());
                      },
                      child: SvgPicture.asset(
                        "lib/assets/images/cart.svg",
                        height: 2.6.h,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: resturants.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(()=> ResturantDetails());
                          },
                          child: Stack(
                            children: [
                              Image.asset(resturants[index]),
                              Padding(
                                padding: EdgeInsets.only(top: 17.h, left: 3.w),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(name[index], 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp
                                    ),
                                    ),
                                     Row(
                                       children: [
                                         Icon(
                                           Icons.star,
                                           color: primarytheme,
                                           size: 3.h,
                                         ),
                                         Text.rich(
                                           TextSpan(children: [
                                             TextSpan(
                                               text: "4.9",
                                               style: TextStyle(
                                                   color: primarytheme,
                                                   fontWeight: FontWeight.w700,
                                                   fontSize: 12.sp),
                                             ),
                                            
                                             TextSpan(
                                                 text: ".",
                                                 style: TextStyle(
                                                     color: primarytheme,
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 13.sp)),
                                             TextSpan(
                                                 text: "Dessert",
                                                 style: TextStyle(
                                                   color: Colors.white,
                                                   fontSize: 12.sp,
                                                   fontWeight: FontWeight.w700,
                                                 )),
                                           ]),
                                         )
                                       ],
                                     ),
                                               
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        )
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
