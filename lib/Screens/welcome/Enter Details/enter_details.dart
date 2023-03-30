import 'package:flutter/material.dart';
import 'package:home_foodie/Screens/welcome/Enter%20Details/detail%20textFields/detailTextFeilds.dart';
import 'package:home_foodie/Screens/welcome/Enter%20Details/detailController/detail_Controller.dart';
import 'package:home_foodie/constants/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class EnterDetailsScreen extends StatelessWidget {
  EnterDetailsScreen({Key? key}) : super(key: key);

  DetailsController _detailsController = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _detailsController.detailsKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 7.h,
              ),
              Center(
                  child: Text(
                "Enter Details",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
              )),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: DetailsTextfields(
                    controller: _detailsController.name,
                    validator: _detailsController.nameValidator,
                    label: "name"),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: DetailsTextfields(
                  controller: _detailsController.address,
                  validator: _detailsController.addressValidator,
                  label: "Address",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: DetailsTextfields(
                    controller: _detailsController.pincode,
                    validator: _detailsController.pinValidator,
                    label: "Pin Code"),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {
                  _detailsController.detailValidator();
                },
                child: Container(
                  height: 7.5.h,
                  width: 86.w,
                  decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Text(
                      "ADD",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
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
}
