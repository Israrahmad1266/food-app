import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/home/menu/my_order/checkout/check_out_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ApplyCouponScreen extends StatelessWidget {
  const ApplyCouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              children: [
                  SizedBox(
                        height: 2.h,
                      ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.grey[900],)),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("Apply Coupon",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp
                      ),
                      )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("lib/assets/images/discount.png", height: 8.h,),
                                     
                                  ],
                                ),
                                Spacer(),
                                Text("Lorem Ipsum is simply dummy text\n of the printing and typesetting industry.\n Lorem Ipsum has been the industry's\n standard dummy text ever since the 1500s,\n "),
                              

                              ],
                            ),
                            
                           
                                Row(
                                  children: [
                                    Text("40% OFF", style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 14.sp
                                     ),),
                                     Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Get.to(()=> CheckOutScreen());
                                      },
                                      child: Container(
                                        height: 4.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                          color: primarytheme,
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        child: Center(
                                          child: Text("Apply",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 1.h,
                                ),
                                Divider(
                                  thickness: 0.1.h,
                                  height: 0.1.h,
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
    );
  }
}
