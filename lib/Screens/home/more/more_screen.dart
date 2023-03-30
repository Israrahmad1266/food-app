


import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_foodie/Screens/home/more/payment/payment_details_sreen.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'about us/about_screen.dart';
import 'inbox/inbox_screen.dart';
import 'notification/notification_screen.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  List<String> title = [
    "Payment Details",
    "My Orders",
    "Notifications",
    "Inbox",
    "About Us",
    "Setting"
  ];
  List<String> icon = ["lib/assets/images/002-income.png","lib/assets/images/Group 8094.png",
  "lib/assets/images/003-bell.png","lib/assets/images/004-inbox-mail.png","lib/assets/images/005-info.png",
  "lib/assets/images/Icon ionic-ios-settings.png"

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Text(
                      "More",
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
                height: 8.h,
              ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
                 Get.to(()=> PymentDetailScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[0],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[0],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
                 Get.to(()=> PymentDetailScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[1],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[1],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             )
             ,
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
                 Get.to(()=> NotificationScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[2],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[2],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
               Get.to(()=> InboxScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[3],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[3],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             )
             ,
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
                 Get.to(()=> AboutUsScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[4],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[4],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 5.h),
               child: InkWell(
                 onTap: (){
                 Get.to(()=> PymentDetailScreen());
                 },
                 child: Row(
                   children: [
                     Container(
                       height: 9.h,
                       width: 9.h,
                       decoration: BoxDecoration(
                           color: Color(0xFFD8D8D8), shape: BoxShape.circle),
                       child: Center(
                         child: Image.asset(icon[5],
                         height: 3.h,
                         width: 3.h,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 2.5.w,
                     ),
                     Text(title[5],
                     style: TextStyle(
                       fontSize: 15.sp
                     ),
                     ),
                     // SizedBox(
                     //   width: 10.w,
                     // ),
                     
                     Spacer(),
                     Icon(Icons.arrow_forward_ios,
                     size: 3.h,
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 2.6.h,
             )
            ],
          ),
        ),
      ),
    );
  }
}
