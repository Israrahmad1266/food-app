import 'package:get/get.dart';

class BottomController extends GetxController {
  RxInt tabindex = 2.obs;
  changeTabIndex(int index){
   tabindex(index);
  }


}