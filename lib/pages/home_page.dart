import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/utils/app_them/theme_service.dart';
import 'package:getx_demo/controller/home_page_controller.dart';
import 'package:getx_demo/pages/about_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  // HomePageController _homeController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('hello'.tr,style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              Get.to(AboutPage());

            }, child: Text('getApiData'.tr)),
            SizedBox(height: 20,),
            InkWell(
            onTap: (){
                Get.find<HomePageController>().incrementNumber();
              },
              child: Container(
                height: 50,
                width: 50,
                child: Center(child: Icon(Icons.add,size: 50,)))),
            SizedBox(height: 10,),
           Obx(() =>  Text(Get.find<HomePageController>().number.toString(),style: TextStyle(fontSize: 23),),),
            InkWell(
              onTap: (){
               Get.find<HomePageController>().decrase();
              },
              child: Container(
                height: 50,
                width: 50,
                child: Center(child: Icon(Icons.minimize,size: 50,))))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          ThemeService().changeThemeMode();
          // bool isback = false;
          // setState(() {
          //   // bool isback = false;
          //   // isback == false?
          //   MediaQuery.of(context).platformBrightness == Brightness.dark;            
          // });
        },
      ),
    );
  }
}