import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigationController extends GetxController{

  RxInt number = 0.obs;

  void getMyIndex (RxInt myIndex){
   number(myIndex.toInt());
  }
 
}