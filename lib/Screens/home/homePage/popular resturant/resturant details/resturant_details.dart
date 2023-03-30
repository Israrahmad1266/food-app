// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/home/menu/my_order/checkout/check_out_screen.dart';
import 'package:home_foodie/Screens/home/menu/my_order/my_order_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/resturent%20controller/resturent_description.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ResturantDetails extends StatelessWidget {
  ResturantDetails({Key? key}) : super(key: key);

  ResturentController _resturentController = Get.put(ResturentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                "lib/assets/images/resturant.png",
                height: 30.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 4,
                      ),
                    ]),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text: "A One Resturant",
                                    style: TextStyle(fontSize: 16.sp)),
                                TextSpan(
                                    text: "\nNorth Indian Resturant",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: "\nD 36 Noida Sector 62    -5km",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600))
                              ]),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.2.h),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                children: [
                                  Container(
                                    height: 6.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF5E9F39),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "3.6",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 3.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 6.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("37.5k"),
                                        Text("Reviews")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        ListView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Obx(() => Column(
                                                children: [
                                                  Image.asset(
                                                    "lib/assets/images/pizza.png",
                                                    height: 10.h,
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  _resturentController
                                                              .quantity.value >
                                                          0
                                                      ? Container(
                                                          height: 5.h,
                                                          width: 25.w,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  primarytheme,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          8))),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              InkWell(
                                                                  onTap: () {
                                                                    _resturentController
                                                                        .removeQuantity();
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .remove,
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                              Text(
                                                                  _resturentController
                                                                      .quantity
                                                                      .value
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              InkWell(
                                                                  onTap: () {
                                                                    _resturentController
                                                                        .addQuantity();
                                                                  },
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    color: Colors
                                                                        .white,
                                                                  ))
                                                            ],
                                                          ))
                                                      : Container(
                                                          height: 5.h,
                                                          width: 25.w,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  primarytheme,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          8))),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "ADD",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        14.sp),
                                                              ),
                                                              SizedBox(
                                                                width: 3.w,
                                                              ),
                                                              InkWell(
                                                                  onTap: () {
                                                                    _resturentController
                                                                        .addQuantity();
                                                                  },
                                                                  child: Icon(
                                                                    Icons.add,
                                                                    color: Colors
                                                                        .white,
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                ],
                                              )),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Café de Noires",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.sp),
                                              ),
                                              Text(
                                                "Lorem Ipsum",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp),
                                              ),
                                              Text.rich(TextSpan(children: [
                                                TextSpan(
                                                    text: "₹ 770",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14.sp)),
                                                TextSpan(
                                                    text: "  ",
                                                    style: TextStyle(
                                                        color: Colors.redAccent,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14.sp)),
                                                TextSpan(
                                                    text: "₹999",
                                                    style: TextStyle(
                                                        color: Colors.redAccent,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14.sp,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough)),
                                              ])),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: primarytheme,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: primarytheme,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: primarytheme,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: primarytheme,
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Divider(
                                        thickness: 0.2.h,
                                        color: primarytheme,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  )
                                ],
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Obx(() =>  Padding(
              padding: EdgeInsets.only(
                  top: 88.h, left: 5.w, right: 5.w, bottom: 01.h),
              child:  _resturentController.quantity == 0 ? SizedBox(): InkWell(
                onTap: (){
                  Get.to(()=> MyOrderScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  height: 10.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: primarytheme,
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "${_resturentController.quantity.value} ITEMS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600)),
                          Text("₹ 770",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp)),
                        ],
                      ),
                      Spacer(),
                      Text("Next",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 16.sp
                      ),
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
