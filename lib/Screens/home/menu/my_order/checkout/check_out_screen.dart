
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/check_out_controller.dart';
import 'package:sizer/sizer.dart';

import 'saved place/saved_place_screen.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({Key? key}) : super(key: key);

  List<String> title = [
    'Cash on delivery',
    '**** **** **** 2187',
    'johndoe@email.com'
  ];
  CheckoutController controller = Get.put(CheckoutController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 5.h,
                  ),
                  Text("Delivery Address"),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        """653 Nostrand Ave., 
Brooklyn, NY 11216""",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Change",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14.sp,
                            color: primarytheme),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
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
                        Text(
                          "Payment method",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),
                        Icon(
                          Icons.add,
                          color: primarytheme,
                        ),
                        Spacer(),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: primarytheme,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 8.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border:
                                Border.all(color: Colors.black, width: 0.2.sp)),
                        child: Obx(() => SizedBox(
                              width: 13.w,
                              child: RadioListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  dense: true,
                                  title: Text(
                                    "Cash on delivery",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  value: paymentMethod.cash,
                                  groupValue: controller.selectedMethod.value,
                                  onChanged: controller.onchaged),
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 8.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border:
                                Border.all(color: Colors.black, width: 0.2.sp)),
                        child: Obx(() => SizedBox(
                              width: 13.w,
                              child: RadioListTile(
                                  secondary: Image.asset(
                                    "lib/assets/images/visa.png",
                                    height: 4.h,
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  dense: true,
                                  title: Text(
                                    "**** **** **** 2187",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  value: paymentMethod.card,
                                  groupValue: controller.selectedMethod.value,
                                  onChanged: controller.onchaged),
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 8.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border:
                                Border.all(color: Colors.black, width: 0.2.sp)),
                        child: Obx(() => SizedBox(
                              width: 13.w,
                              child: RadioListTile(
                                  secondary: Image.asset(
                                    "lib/assets/images/paypal.png",
                                    height: 3.h,
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  dense: true,
                                  title: Text(
                                    "johndoe@email.com",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  value: paymentMethod.paypal,
                                  groupValue: controller.selectedMethod.value,
                                  onChanged: controller.onchaged),
                            )),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp),
                          ),
                          Spacer(),
                          Text(
                            "750",
                            style: TextStyle(
                                color: Colors.black,
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
                                color: textColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp),
                          ),
                          Spacer(),
                          Text(
                            "0",
                            style: TextStyle(
                                color: Colors.black,
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
                            "Discount",
                            style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp),
                          ),
                          Spacer(),
                          Text(
                            "75",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(()=> SavedPlaces());
                        },
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: primarytheme,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "Send Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }

  DraggableScrollableSheet getCard() {
    CheckoutController checkoutController = Get.put(CheckoutController());
    return DraggableScrollableSheet(
      expand: false,
        builder: (context, ScrollController controller) =>
            SingleChildScrollView(
              controller: controller,
              child: Container(
                height: 80.h,
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
                          Text(
                            "Add Credit/Debit Card",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
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
                      Center(
                        child: Container(
                          height: 7.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: textfieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "card number",
                                  hintStyle: TextStyle(color: textColor)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Expiry",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15.sp),
                          ),
                          Spacer(),
                          Center(
                            child: Container(
                              height: 7.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                  color: textfieldColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "MM",
                                      hintStyle: TextStyle(color: textColor)),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: Container(
                              height: 7.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                  color: textfieldColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "YY",
                                      hintStyle: TextStyle(color: textColor)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Container(
                          height: 7.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: textfieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Security Code",
                                  hintStyle: TextStyle(color: textColor)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Container(
                          height: 7.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: textfieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "First Name",
                                  hintStyle: TextStyle(color: textColor)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Container(
                          height: 7.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: textfieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.w),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Last Name",
                                  hintStyle: TextStyle(color: textColor)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "You can remove this card at anytime ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13.sp),
                          ),
                          Spacer(),
                          Obx(() => Switch(
                              value: checkoutController.remove.value,
                              onChanged: checkoutController.onreverse))
                        ],
                      ),

                      SizedBox(
                        height: 2.h,
                      ),
                        InkWell(
                        onTap: () {
                     
                        },
                        child: Center(
                          child: Container(
                            height: 7.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: primarytheme,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "+      Add Card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
