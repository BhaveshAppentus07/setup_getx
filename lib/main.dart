import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Binding/all_binding.dart';
import 'package:getx_demo/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme: ThemeData.light().copyWith(),
    darkTheme:ThemeData.dark().copyWith(),
      initialBinding: AllBinding(),
      home: HomePage(),
    );
  }
}