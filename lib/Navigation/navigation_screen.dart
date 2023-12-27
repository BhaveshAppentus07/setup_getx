import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Navigation/user_profile/profile_screen.dart';
import 'package:getx_demo/controller/navigation_controller.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/urls.dart';
import 'package:ionicons/ionicons.dart';

class NavigationScreen extends StatelessWidget {
   NavigationScreen({super.key});

  //  int myIndex = 0;
  List<Widget> screens = const [
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('reels Screen')),
    Center(child: Text('Group Screen')),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() =>  IndexedStack(
          index: Get.find<NavigationController>().number.toInt(),
          children: screens,
        ),
      ),

      //---------------------- Bottom Navigation Bar ------------------------------

      bottomNavigationBar: Obx(() =>  Container(
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Color.fromRGBO(255, 255, 255, 0.7),
              Color.fromRGBO(255, 255, 255, 0),
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.5),
          child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  // // setState(() {
                  //   myIndex = index;
                  // // });
                  Get.find<NavigationController>().getMyIndex(index.obs);
                },
                
                backgroundColor: AppColor.backgrounColor,
                currentIndex: Get.find<NavigationController>().number.toInt(),
                unselectedItemColor: Colors.grey,
                selectedItemColor: AppColor.primary,
                unselectedFontSize: 11,
                selectedFontSize: 11,
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.backgrounColor,
                      icon: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(ImageUrl.home_icon)),
                      label: ""),
                      
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.backgrounColor,
                    icon: Container(
                        height: 23,
                        width: 23,
                        child: Image.asset(ImageUrl.search_icon)),
                      label: ""),
          
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.backgrounColor,
                      icon: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(ImageUrl.reels_icon)),
                      label: ""),
          
                  BottomNavigationBarItem(
                      backgroundColor: AppColor.backgrounColor,
                      icon: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(ImageUrl.group_icon)),
                      label: ""),
            
                      BottomNavigationBarItem(
                      backgroundColor: AppColor.backgrounColor,
                      icon: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(ImageUrl.user_profile)),
                      label: ""),
                ]),
        ),
      ),
      ),
    );
  }
}