import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_foodie/Screens/home/homePage/popular%20resturant/popular_resturant_screen.dart';
import 'package:home_foodie/Screens/home/menu/my_order/my_order_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> food = [
    "lib/assets/images/burger.png",
    "lib/assets/images/srilankanfood.png",
    "lib/assets/images/indian.png",
    "lib/assets/images/indian.png"
  ];
  List<String> popluar = [
    "lib/assets/images/breakfast.png",
    "lib/assets/images/pizza.png",
    "lib/assets/images/snacks.png",
  ];

  List<String> items = ['Offers', "italin", "Srilankan", "indian"];
  List<String> title = ["Minute by tuk tuk", "Café de Noir", "Bakes by Tella"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Text(
                      "Good morning Akila!",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15.sp),
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
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.w,
                ),
                child: Text(
                  "Delivering to",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Text(
                      "Current Location",
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    SvgPicture.asset(
                      "lib/assets/images/arrow.svg",
                      color: primarytheme,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  height: 7.h,
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
                height: 5.h,
              ),
              SizedBox(
                height: 17.h,
                width: 100.w,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food.length,
                    itemBuilder: (BuildContext, index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                Image.asset(
                                  food[index],
                                  height: 13.h,
                                ),
                                Text(
                                  items[index],
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15.sp),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent Items",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                            color: primarytheme,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                      width: 100.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: food.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                SizedBox(
                                  width: 1.5.w,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Image.asset(
                                      food[index],
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(items[index])
                                  ],
                                ),
                                SizedBox(
                                  width: 1.5.w,
                                ),
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Popular Resturants",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(() => PopularResturantScreen());
                          },
                          child: Text(
                            "View all",
                            style: TextStyle(
                              color: primarytheme,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: popluar.length,
                  itemBuilder: (BuildContext, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          popluar[index],
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.w,
                          ),
                          child: Text(
                            title[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.7.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
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
                                      text: "  (124 ratings) cafe ",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  TextSpan(
                                      text: ".",
                                      style: TextStyle(
                                          color: primarytheme,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp)),
                                  TextSpan(
                                      text: "  Western Food ",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      )),
                                ]),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h)
                      ],
                    );
                  }),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp),
                    ),
                    Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: primarytheme,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 30.h,
                width: 100.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popluar.length - 1,
                    itemBuilder: (BuildContext, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(popluar[index]))),
                                ),
                                SizedBox(
                                  height: 1.7.h,
                                ),
                                Text(
                                  title[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp),
                                ),
                                Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                            text: " cafe ",
                                            style: TextStyle(
                                              color: textColor,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                            )),
                                        TextSpan(
                                            text: ".",
                                            style: TextStyle(
                                                color: primarytheme,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13.sp)),
                                        TextSpan(
                                            text: "  Western Food ",
                                            style: TextStyle(
                                              color: textColor,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ]),
                                    ),
                                    SizedBox(
                                      width: 9.w,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: primarytheme,
                                      size: 3.h,
                                    ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                          color: primarytheme,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 3.w,
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 6.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
