
import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/home/profile/profile_screen.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/bottom_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'homePage/home_screen.dart';
import 'menu/menu_list_screen.dart';
import 'more/more_screen.dart';
import 'offers/offer_screen.dart';

class BottomBaarScreen extends StatelessWidget {
  BottomBaarScreen({Key? key}) : super(key: key);

  BottomController _bottomController = Get.put(BottomController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => Stack(
              children: [
                Center(
                  child: IndexedStack(
                    index: _bottomController.tabindex.value,
                    children: [
                     MenuListScreen(),
                      OffersScreen(),
                      HomeScreen(),
                     ProfileScreen(),
                   MoreScreen()
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1.h),
                    height: 8.h,
                    width: 100.w,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            _bottomController.changeTabIndex(0);
                          },
                          child: Image.asset("lib/assets/images/menu.png", height: 5.h,
                          color:  _bottomController.tabindex == 0 ? primarytheme : Colors.grey,
                          )),
                        Spacer(),
                        InkWell(
                             onTap: (){
                            _bottomController.changeTabIndex(1);
                          },
                          child: Image.asset("lib/assets/images/offers.png", height: 5.h,
                          color:  _bottomController.tabindex == 1 ? primarytheme : Colors.grey,
                          )),
                         Spacer(),
                        Column(
                          children: [
                            InkWell(
                                 onTap: (){
                                _bottomController.changeTabIndex(2);
                              },
                              child: Icon(Icons.home, size: 6.h, color:  _bottomController.tabindex == 2 ? primarytheme : Colors.grey,)),
                              SizedBox(
                                height: 2.h,
                              )
                          ],
                        ),
                         Spacer(),
                        InkWell(
                             onTap: (){
                            _bottomController.changeTabIndex(3);
                          },
                          child: Image.asset("lib/assets/images/profile.png", height: 5.h,
                          color:  _bottomController.tabindex == 3 ? primarytheme : Colors.grey,
                          )),
                         Spacer(),
                        InkWell(
                             onTap: (){
                            _bottomController.changeTabIndex(4);
                          },
                          child: Image.asset("lib/assets/images/more.png", height: 5.h,
                          
                          color:  _bottomController.tabindex == 4 ? primarytheme : Colors.grey,
                          
                          )),

                      ],
                    ),
                  )
                ),
              ],
            )),
      ),
    );
  }
}
