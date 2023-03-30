import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class DetailsTextfields extends StatelessWidget {
  DetailsTextfields(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.label,
      this.obscure = false})
      : super(key: key);
  final String? Function(String?) validator;
  bool obscure;
  String label;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhysicalModel(
          color: Color(0xFFF2F2F2),
          elevation: 1,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: SizedBox(
            width: 100.w,
            height: 7.5.h,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 3.w
          ),
          child: TextFormField(
            obscureText: obscure,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
                constraints: BoxConstraints(maxWidth: 100.w),
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.transparent),
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(50),
                //   ),
                // ),
                border: InputBorder.none,
                label: Text(label)),
          ),
        )
      ],
    );
  }
}

  
