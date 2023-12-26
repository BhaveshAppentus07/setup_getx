import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/pages/home_page.dart';

class EmptyValidationController extends GetxController{

 RxBool check2 = false.obs;
  

  @override
  void dispose() {
    check2(false);
    super.dispose();
  }
  
  void checkValid(String checkvali){

    if(checkvali != ''){
      check2(true);
    }
    else {
      check2(false);
    }
  }

}

