import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Auth/otp_screen.dart';
import 'package:getx_demo/Auth/reset_password_otp.dart';
import 'package:getx_demo/controller/empty_validation_controller.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/utils/urls.dart';
import 'package:getx_demo/widget/custom_button.dart';
import 'package:getx_demo/widget/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.fill,
              image: AssetImage(ImageUrl.signup_background)),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 43,),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,color: Colors.white,)),
                SizedBox(height: 30,),
                        Text('forgot_password_2'.tr,style: AppStyle.sign_Up,),
                        SizedBox(height: 10,),
                        Text('forgot_password_message_2'.tr,style: AppStyle.otp_message_2,),
                   SizedBox(height: 30,),
                  CustomTextFieldWidget(
                    controller: _controller,
                          labelText: 'Enter Email / Phone Number',
                          hintText: 'Your email address',
                          onChanged: (va){
                            Get.find<EmptyValidationController>().checkValid(_controller.text);
                          },
                          ),
                          
                          SizedBox(height: 100, ),
                Obx(() =>  Center(
                    child:  Get.find<EmptyValidationController>().check2 == false?
                    CustomButton(
                      width: 264,
                    height: 56,
                      child: Text('Send Code',style: AppStyle.buttonStyle,),
                    ontap: (){},
                    color: AppColor.buttonBackColor,
                    ):
                  
                     CustomButton(
                    width: 264,
                    height: 56,
                      child: Text('Send Code',style: AppStyle.fillbuttonStyle,),
                    ontap: (){
                      Get.to(ResetPasswordOTPScreen());
                    },
                    color: AppColor.primary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}