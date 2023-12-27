import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/checkbox_controller_2.dart';
import 'package:getx_demo/controller/empty_validation_controller.dart';
import 'package:getx_demo/controller/home_page_controller.dart';
import 'package:getx_demo/controller/checkbox_controller.dart';
import 'package:getx_demo/controller/navigation_controller.dart';
import 'package:getx_demo/controller/pincode_controller.dart';


class AllBinding extends Bindings{


 @override
  void dependencies() {
   Get.put(HomePageController());
   Get.put(CheckBoxController1());
   Get.put(CheckBoxControllerSecond());
   Get.put(pinCodeController());
   Get.put(EmptyValidationController());
   Get.put(NavigationController());
  } 
}