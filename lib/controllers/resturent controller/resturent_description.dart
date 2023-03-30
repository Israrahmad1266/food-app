import 'package:get/get.dart';

class ResturentController extends GetxController {
RxInt quantity = 0.obs;

addQuantity(){
  quantity.value +=1;
}
removeQuantity(){
  if (quantity.value >0) {
    quantity.value -=1;
  }
}
}