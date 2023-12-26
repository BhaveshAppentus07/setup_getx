import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Auth/login_screen.dart';
import 'package:getx_demo/Auth/otp_screen.dart';
import 'package:getx_demo/controller/checkbox_controller.dart';
import 'package:getx_demo/controller/checkbox_controller_2.dart';
import 'package:getx_demo/controller/home_page_controller.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/widget/custom_button.dart';
import 'package:getx_demo/widget/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});

var country = ['India'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/signup_background.png')),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 43,),
                  Container(
                    height: 51,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     Text('Sign_Up'.tr,style: AppStyle.sign_Up,),
                     Text('signup_message_2'.tr,style: AppStyle.signup_message_2,)
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        child: CustomTextFieldWidget(
                          labelText: 'First Name',
                          hintText: 'Enter Name',
                          ),
                      ),
            
                        Container(
                     width: 165,
                          child: CustomTextFieldWidget(
                                        labelText: 'First Name',
                                        hintText: 'Enter Last Name',
                                        ),
                        )
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomTextFieldWidget(
                          labelText: 'Email Address',
                          hintText: 'Enter your Email',
                          ),
                          SizedBox(height: 20,),
                  CustomTextFieldWidget(
                          labelText: 'Mobile Number',
                          hintText: 'Enter Mobile',
                          ),
            
                          SizedBox(height: 20,),
                          Container(
                            height: 70,
                         decoration: BoxDecoration(
                  border: Border.all(color: AppColor.TextFieldfocusColor),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                          // width: MediaQuery.sizeOf(context).width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(
                      padding: const EdgeInsets.only(left:13.0,top: 8),
                      child: Text('Country',
                      style: AppStyle.labelTextStyle,),
                    ),
                                Container(
                                  height: 40,
                                  child: DropdownButtonFormField(
                                      decoration:
                                          const InputDecoration(border: InputBorder.none),
                                      hint: Text(
                                        "    Select Country",
                                        style: AppStyle.hintStyle,
                                      ),
                                      isExpanded: true,
                                      borderRadius: BorderRadius.circular(5),
                                      items: country.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text('     ${items}',
                                                style: AppStyle.labelTextStyle));
                                      }).toList(),  
                                      onChanged: (String? newvalue) {
                                      
                                      },),
                                ),
                              ],
                            ),
                          )),
                            SizedBox(height: 20,),
                  CustomTextFieldWidget(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                           icon: Icon(Icons.visibility_off_outlined,color: Colors.white,),
                          ), 
            
                                SizedBox(height: 20,),
                  CustomTextFieldWidget(
                          labelText: 'Confirm Password',
                          hintText: 'Enter Password',
                          icon: Icon(Icons.visibility_off_outlined,color: Colors.white,),
                          ), 
            
                          SizedBox(height: 20,),
                          Text('signup_message_3'.tr,style: AppStyle.signup_message_2,),
                          SizedBox(height: 10,),
                         Obx(() =>  Row(
                             children: [
                               Checkbox(
                                checkColor: Colors.black,
                                  activeColor: AppColor.primary,
                                 value: Get.find<CheckBoxController1>().check2.value,
                                   onChanged: (a){
                                    Get.find<CheckBoxController1>().changeCheck();
                                   }),
                                 Text('signup_message_4'.tr,style: AppStyle.labelTextStyle,)
                             ],
                           ),
                         ),
                          Obx(() => Row(
                             children: [
                               Checkbox(
                                activeColor: AppColor.primary,
                                   checkColor: Colors.black,
                                value: Get.find<CheckBoxControllerSecond>().check.value,
                                 onChanged: (a){
                                  Get.find<CheckBoxControllerSecond>().changeCheck();
                                 }),
                                 Text('signup_message_5'.tr,style: AppStyle.labelTextStyle,)
                             ],
                            ),
                          ),
                         SizedBox(height: 10,),
                         Container(
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               SizedBox(
                                height: 56,
                                 child: CustomButton(
                                  width: 200,
                                  color: AppColor.buttonBackColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Sign Up ',style: AppStyle.buttonStyle,),
                                      Icon(Icons.arrow_forward,size: 15,)
                                    ],
                                  ),
                                   ontap: (){
                                    Get.to(OTPScreen());
                                   }),
                               ),
                                 Container(
                                  decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.white,
                                  ),
                                  height: 56,
                                  width: 56,
                                  child: Center(child: Image(image: AssetImage('assets/images/google.png'))),
                                 ),
                                  Container(
                                  decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.white,
                                  ),
                                  height: 56,
                                  width: 56,
                                  child: Center(child: Image(image: AssetImage('assets/images/apple.png'))),
                                 )
                             ],
                           ),
                             
                         ),
            
                         SizedBox(height: 40,),
            
                         Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('signup_message_6'.tr,style: AppStyle.signup_message_2,),
                             InkWell(
                              onTap: (){
                                Get.to(LoginScreen());
                              },
                              child: Text(' Sign IN',style: AppStyle.labelTextStyle,))
                           ],
                         ))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}