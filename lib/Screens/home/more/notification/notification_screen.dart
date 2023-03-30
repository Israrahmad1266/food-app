
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w
            ),
            child: Column(
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
                  Text("Notifications",
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
                height: 5.h,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext, index){
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 0.5.h,
                          backgroundColor: primarytheme,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Text("Your orders has been picked up",
                           style: TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 15.sp
                           ),
                           ),
                           SizedBox(
                             height: 1.h,
                           ),
                           Text("Now",
                           style: TextStyle(
                             color: textColor,
                             fontSize: 12.sp
                           ),
                           )
                         ],
                       )
                      ],
                    ),
                    Divider(
                      thickness: 0.1.w,
                      color: textColor,
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
        )
      ),
    );
  }
}