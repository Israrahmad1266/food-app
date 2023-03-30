
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({Key? key}) : super(key: key);

   List<String> popluar = [
    "lib/assets/images/breakfast.png",
    "lib/assets/images/pizza.png",
    "lib/assets/images/snacks.png",
  ];
  List<String> title = ["Chicken Biryani", "Veg Biryani", "Chaap Biryani"];

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
                      "Latest Offers",
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
                height: 3.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Text(
                  """Find discounts, Offers special
meals and more!""",
                  style: TextStyle(
                    color: textColor,
                    // fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(padding: EdgeInsets.only(
                left: 5.w
              ),
              child: Container(
                height: 6.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: primarytheme,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Center(
                  child: Text("Check Offers", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp
                  ),
                  ),
                ),
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
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
