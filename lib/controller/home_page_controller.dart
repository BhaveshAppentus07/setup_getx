import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePageController extends GetxController{

  RxInt number = 0.obs;

  void incrementNumber (){
    number++;
    print(number);
  }
  void decrase (){
    number--;
    print(number);  
  }
}