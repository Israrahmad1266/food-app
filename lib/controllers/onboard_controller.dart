import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
PageController controller = PageController(
  initialPage: 0
);
RxInt currentPage = 0.obs;
onPageChage(int index){
  currentPage.value = index;
}
}