import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/home_page_controller.dart';


class AllBinding extends Bindings{


 @override
  void dependencies() {
   Get.put(HomePageController());
  } 
}