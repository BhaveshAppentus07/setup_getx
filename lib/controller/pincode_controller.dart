import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class pinCodeController extends GetxController{

  // RxInt? number;

    RxBool verify = false.obs;

    checkPin(RxInt number){

   if(number == 6){
    verify(true);
   }
   else {
    verify(false);
   }
   }
}