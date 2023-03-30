
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/check_out_controller.dart';
import 'package:sizer/sizer.dart';
class PymentDetailScreen extends StatelessWidget {
  const PymentDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 3.h,
                    ),
                  ),
                  SizedBox(
                    width: 1.h,
                  ),
                  Text("Payment Details",
                  style: TextStyle(
                    fontSize: 19.sp
                  ),
                  ),
                  Spacer(),
                    SvgPicture.asset(
                      "lib/assets/images/cart.svg",
                      height: 2.6.h,
                    )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
                 Text("Customize your payment method",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(
                    thickness: 0.1.w,
                    color: textColor,
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 5.w
                    ),
                    child: Row(
                      children: [
                          Text("Cash/Card on delivery",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.check,
                    color: primarytheme,
                    size: 3.h,
                    )
                      ],
                    ),
                    
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                      horizontal: 5.w
                    ),
                      child: Divider(
                      thickness: 0.1.w,
                      color: textColor,
                  ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                      horizontal: 5.w
                    ),
                    child: Row(children: [
                      Image.asset("lib/assets/images/visa.png",
                      height: 4.h,
                      ),
                      Text("****** **** 23256",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 13.sp
                      ),
                      ),
                      Spacer(),
                      Container(
                        height: 5.h,
                        width: 26.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primarytheme,
                            width: 0.5.w
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Center(
                          child: Text("Delete Card",
                          style: TextStyle(
                            color: primarytheme,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      )
                    ],),
                    
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                      horizontal: 5.w
                    ),
                      child: Divider(
                      thickness: 0.1.w,
                      color: textColor,
                  ),
                    ),
                       SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 5.w
                    ),
                    child: Row(
                      children: [
                          Text("Other Methods",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Spacer(),
                    // Icon(Icons.check,
                    // color: primarytheme,
                    // size: 3.h,
                    // )
                      ],
                    ),
                    
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                    InkWell(
                        onTap: () {
                          Get.bottomSheet(
                            getCard(),
                            // isScrollControlled: true,
                          );
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
                                "Add Another Credit/Debit Card",
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
                        //  Get.to(()=> SavedPlaces());
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
