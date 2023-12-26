import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/empty_validation_controller.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/widget/custom_button.dart';
import 'package:getx_demo/widget/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({super.key});

  TextEditingController _controller1 = TextEditingController();
   TextEditingController _controller2 = TextEditingController();

  bool Password1 = false;
  bool Password2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/signup_background.png')),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 43,),
               
                SizedBox(height: 30,),
                        Text('reset_password'.tr,style: AppStyle.sign_Up,),
                        SizedBox(height: 10,),
                        Text('reset_password_message_2'.tr,style: AppStyle.otp_message_2,),
                   SizedBox(height: 30,),
                  CustomTextFieldWidget(
                    controller: _controller1,
                          labelText: 'New Password',
                          hintText: 'Enter your password',
                             icon: Icon(Icons.visibility_outlined,color: Colors.white,),
                          ),
                            SizedBox(height: 20,),
                  CustomTextFieldWidget(
                    controller: _controller2,
                          labelText: 'Confirm New Password',
                          hintText: 'Enter your password',
                          icon: Icon(Icons.visibility_outlined,color: Colors.white,),
                          ),

                          SizedBox(height: 30,),
                          Text('reset_password_message_3'.tr,style: AppStyle.hintStyle,),
                          
                          SizedBox(height: 100, ),
         Center(
                    child:  Password1 == false && Password2 == false?
                    CustomButton(
                      width: 264,
                    height: 56,
                      child: Text('Update Password',style: AppStyle.buttonStyle,),
                    ontap: (){},
                    color: AppColor.buttonBackColor,
                    ):
                  
                     CustomButton(
                    width: 264,
                    height: 56,
                      child: Text('Update Password',style: AppStyle.fillbuttonStyle,),
                    ontap: (){
                      // Get.to(ResetPasswordOTPScreen());
                    },
                    color: AppColor.primary,
                    ),
                  ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}