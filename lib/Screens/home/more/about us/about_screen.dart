
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({ Key? key }) : super(key: key);

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
                  Text("About Us",
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
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
                        Text("""Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. \n Ut enim ad minim veniam, quis\n nostrud exercitation ullamco laboris nisi ut \n aliquip ex ea commodo consequat. \n Duis aute irure dolor in reprehenderit in \nvoluptate velit esse cillum dolore eu fugiat\n nulla pariatur. Excepteur sint occaecat \ncupidatat non proident, sunt in culpa qui \nofficia deserunt mollit anim id est laborum.
""")
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
        )
      ),
    );
  }
}