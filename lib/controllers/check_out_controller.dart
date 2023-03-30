import 'package:get/get.dart';

enum paymentMethod{
cash,
card, 
paypal
}
class CheckoutController extends GetxController {
 Rx<paymentMethod?> selectedMethod = paymentMethod.cash.obs;
 RxBool remove = false.obs;
 onreverse(value){
   remove.value = value;
 }
 onchaged(value){
   selectedMethod.value = value;

 }
}