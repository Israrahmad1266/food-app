import 'dart:async';

// import 'package:biryaniapp/Screens/welcome-screen.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Screens/welcome/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          title: "Home Foogit die",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.cyan,
          ),
          home: Splashscreen());
      // home: const WelcomeScreen());
    });
  }
}
