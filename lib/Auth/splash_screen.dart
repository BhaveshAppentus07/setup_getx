import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Auth/signUp_screen.dart';
import 'package:getx_demo/controller/checkbox_controller.dart';
import 'package:getx_demo/pages/home_page.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

          

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 2),(){
       Get.to(SignupScreen());
    });
       return Scaffold(
        backgroundColor: AppColor.splashBackgroundColor,
         body: Center(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 59,
                  width: 146,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/app_logo.png'))),
                SizedBox(height: 20,),
                Text('Do_What_You_Love'.tr,style: AppStyle.Do_What_You_Love,),
                SizedBox(height: 5,),
                Text('AND_SHARE_IT_WITH_THE_WORLD'.tr,style: AppStyle.AND_SHARE_IT_WITH_THE_WORLD,)
              ],
            ),
         ),
       );
  }
}