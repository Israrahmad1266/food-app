import 'package:get/get.dart';

class BiryaniController extends GetxController {
RxDouble level = 1.0.obs;

onchanged(value){
  level.value = value;
}

RxDouble spices = 1.0.obs;

onSpiceChanged(value){
  spices.value = value;
}

  RxInt portion = 1.obs;
deduction(){
  if(
    portion.value >0
  )
  portion -= 1;
}

addition(){
  portion += 1;
}

}