
import 'package:flutter/material.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:home_foodie/controllers/singup_controllers.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
class Signup extends StatelessWidget {
  Signup({ Key? key }) : super(key: key);

  SignUpcontroller signUpcontroller = Get.put(SignUpcontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 5.h,
          ),
          child: Form(
            key: signUpcontroller.registrationKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                    child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w400,
                      
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h
                  ),
                  Center(
                    child: Text("Add your details to sign up",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp
                    ),
                    ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                          controller: signUpcontroller.name,
                          validator: signUpcontroller.namevalidator,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                          controller: signUpcontroller.email,
                          validator: signUpcontroller.emailvalidator,
                           
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                          controller: signUpcontroller.mobile,
                          validator: signUpcontroller.mobilevalidator,
                           
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Mobile number",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                            controller: signUpcontroller.address,
                          validator: signUpcontroller.addressvalidator,
                           
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Address",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                           controller: signUpcontroller.password,
                          validator: signUpcontroller.passworvalidator,
                           
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
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
                         
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: TextFormField(
                            controller: signUpcontroller.confirmpass,
                          validator: signUpcontroller.confirmpassworvalidator,
                           
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                color: textColor
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: (){
                        signUpcontroller.checkRegister();
                        },
                        child: Container(
                          height: 7.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: primarytheme,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: Center(
                            child: Text("Sign Up",
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
                    SizedBox(
                      height: 2.h,
                    ),
                     InkWell(
                       onTap: (){
                      
                       },
                       child: Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an Account? ",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            )
                          ),
                           TextSpan(
                            text: "Login",
                            style: TextStyle(
                              color: primarytheme,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            )
                          )
                        ]
                                     )),
                     )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}