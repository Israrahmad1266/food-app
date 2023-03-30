import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/bottom_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../../bottom_bar_screen.dart';

class SavedPlaces extends StatelessWidget {
  const SavedPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 5.w),
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5,
                )
              ]),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 3.6.h,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Change Address",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                  )
                ],
              ),
            ),
            Container(
              height: 65.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/assets/images/map.png"))),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 1.h,
              ),
              height: 16.4.h,
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 3,
                )
              ]),
              child: Column(
                children: [
                  Container(
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
                                hintText: "Search Address"),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        getCard(),
                        // isScrollControlled: true,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/assets/images/starr.png",
                          height: 4.h,
                        ),
                        SizedBox(
                          width: 1.8.w,
                        ),
                        Text(
                          "Choose a saved place",
                          style: TextStyle(color: textColor, fontSize: 13.sp),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  DraggableScrollableSheet getCard() {
    BottomController _bottomController = Get.put(BottomController());
    return DraggableScrollableSheet(
        expand: false,
        builder: (context, ScrollController controller) =>
            SingleChildScrollView(
              controller: controller,
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.0.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.close,
                              size: 3.h,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Image.asset(
                        "lib/assets/images/Group 8168.png",
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Thank You!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "for your order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                          '''Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order'''),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "Track Youur Order!",
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
                      SizedBox(height: 2.h),
                      InkWell(
                        onTap: () {
                          _bottomController.tabindex.value;
                          Get.offAll(() => BottomBaarScreen());
                        },
                        child: Text(
                          "Back To Home",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
