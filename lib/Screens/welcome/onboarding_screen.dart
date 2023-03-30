import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/home/bottom_bar_screen.dart';
import 'package:home_foodie/Screens/welcome/option_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/onboard_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  List<String> assets = [
    "lib/assets/images/Find food you love vector.png",
    "lib/assets/images/Delivery vector.png",
    "lib/assets/images/Live tracking vector.png"
  ];
  List<String> title = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  List<String> subTitle = [
    "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office \n            wherever you are",
    "Real time tracking of your food on the app \n          once you placed the order"
  ];
  OnboardController _controller = Get.put(OnboardController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80.h,
                  child: PageView.builder(
                      controller: _controller.controller,
                      onPageChanged: _controller.onPageChage,
                      itemCount: assets.length,
                      itemBuilder: (buildContext, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Image.asset(
                              assets[index],
                              height: 40.h,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Center(
                              child: Text(
                                title[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Center(
                              child: Text(
                                subTitle[index],
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
            Positioned(
              bottom: 40.h,
              left: 40.w,
              child: Obx(() =>
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CircleAvatar(
                      backgroundColor:
                          _controller.currentPage.value == 0 ? red : textColor,
                      radius: 0.7.h,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          _controller.currentPage.value == 1 ? red : textColor,
                      radius: 0.7.h,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    CircleAvatar(
                      backgroundColor:
                          _controller.currentPage.value == 2 ? red : textColor,
                      radius: 0.7.h,
                    )
                  ])),
            ),
            Positioned(
              bottom: 8.h,
              left: 10.w,
              child: InkWell(
                onTap: () {
                  _controller.currentPage < 2
                      ? _controller.controller.nextPage(
                          duration: Duration(milliseconds: 30),
                          curve: Curves.easeIn)
                      : Get.to(() => BottomBaarScreen());
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
          ],
        ),
      ),
    );
  }
}
