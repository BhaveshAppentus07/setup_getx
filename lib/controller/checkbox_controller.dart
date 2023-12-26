import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/pages/home_page.dart';

class CheckBoxController1 extends GetxController{

  RxBool check2 = false.obs;


 void changeCheck (){
  if(check2 == false){
  check2(true);
   print(check2);
  }
  else {
    check2(false);
       print(check2);
  }
 }
}

