import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Auth/forgot_password.dart';
import 'package:getx_demo/Auth/otp_screen.dart';
import 'package:getx_demo/Auth/signUp_screen.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/utils/urls.dart';
import 'package:getx_demo/widget/custom_button.dart';
import 'package:getx_demo/widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.buttonBackColor,
      body: Stack(
        children: [
          Image(
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.fill,
              image: AssetImage(ImageUrl.signup_background)),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 43,),
                            Container(
                              height: 51,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               Text('welComeBack'.tr,style: AppStyle.sign_Up,),
                               Text('login_message_2'.tr,style: AppStyle.signup_message_2,)
                                ],
                              ),
                            ),
                       SizedBox(height: 30,),
                      CustomTextFieldWidget(
                              labelText: 'Enter Email / Phone Number',
                              hintText: 'Your email address',
                              ),
                
                              SizedBox(height: 20,),
                      CustomTextFieldWidget(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              icon: Icon(Icons.visibility_off_outlined,color: Colors.white,),
                              ),
                              SizedBox(height: 30,),
                              Center(child: TextButton(onPressed: (){
                                Get.to(ForgotPassword());

                              }, child: Text('Forgot_password'.tr,style: AppStyle.forgot_password,))),
                
                            
                  ],
                ),
                Column(
                  children: [
                     Container(
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               SizedBox(
                                // height: 56,
                                 child: CustomButton(
                                  width: 200,
                                  height: 56,
                                  color: AppColor.buttonBackColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Log in ',style: AppStyle.buttonStyle,),
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
                                  child: Center(child: Image(image: AssetImage(ImageUrl.google_icon))),
                                 ),
                                  Container(
                                  decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.white,
                                  ),
                                  height: 56,
                                  width: 56,
                                  child: Center(child: Image(image: AssetImage(ImageUrl.apple_icon))),
                                 )
                             ],
                           ),
                             
                         ),
            
                         SizedBox(height: 40,),
            
                         Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('login_message_3'.tr,style: AppStyle.signup_message_2,),
                             InkWell(
                              onTap: (){
                                Get.to(SignupScreen());
                              },
                              child: Text(' Create Now',style: AppStyle.labelTextStyle,))
                           ],
                         ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}