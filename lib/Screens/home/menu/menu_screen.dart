
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_foodie/Screens/home/menu/biryani.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
   MenuScreen({ Key? key }) : super(key: key);

   List<String> popluar = [
     "lib/assets/images/breakfast.png",
    "lib/assets/images/pizza.png",
    "lib/assets/images/snacks.png",
  ];
  List<String> title = ["Chicken Biryani", "Veg Biryani", "Chaap Biryani","Chicken Biryani"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Padding(padding: EdgeInsets.symmetric(
                horizontal: 5.w
              ),
              child: Row(
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
                  Text("Dessert",
                  style: TextStyle(
                    fontSize: 19.sp
                  ),
                  ),
                  Spacer(),
                    SvgPicture.asset(
                      "lib/assets/images/cart.svg",
                      
                      // color: Color(0xFF21C1A0),
                      height: 2.6.h,
                    )
                ],
              ),
              ),
               SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
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
                              hintText: "Search food"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ListView.builder(
                itemCount: popluar.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext, index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Stack(
                     children: [
                       InkWell(
                         onTap: (){
                           Get.to(()=> BiryaniScreen());
                         },
                         child: Container(
                           height: 30.h,
                           width: 100.h,
                           decoration: BoxDecoration(
                            
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage(popluar[index]))
                           ),
                         ),
                       ),
                       Positioned(
                         bottom: 1.h,
                         left: 2.w,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(title[index],
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18.sp,
                             fontWeight: FontWeight.bold
                           ),
                           ),
                           SizedBox(
                             height: 2.h,
                           ),
                           Row(
                             children: [
                               Icon(Icons.star,
                               
                               color: primarytheme,
                               size: 3.h,
                               ),
                               SizedBox(
                                 width: 1.w,
                               ),
                               Text("4.7",
                               style: TextStyle(
                                 color: primarytheme,
                                 fontWeight: FontWeight.w900,
                                 fontSize: 15.sp
                               ),
                               )
                             ],
                           )
                         ],
                       ))
                     ],
                   ),
                   SizedBox(
                     height: 0.4.h,
                   )
                  ],
                );
              }),
              SizedBox(
                height: 0.h,
              )

            ],
          )
        
        
        
        ),
      ),
    );
  }
}