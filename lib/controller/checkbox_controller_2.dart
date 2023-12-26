import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CheckBoxControllerSecond extends GetxController{

  RxBool check = false.obs;

 void changeCheck (){
  if(check == false){
  check(true);
   print(check);
  }
  else {
    check(false);
       print(check);
  }
 }
}