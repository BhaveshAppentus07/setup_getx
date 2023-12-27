import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/Navigation/navigation_screen.dart';
import 'package:getx_demo/controller/pincode_controller.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/utils/urls.dart';
import 'package:getx_demo/widget/custom_button.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
   OTPScreen({super.key});

  TextEditingController pincode = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.signupBackgroundColor,
      body: Stack(
        children: [
          Image(
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.fill,
            image: AssetImage(ImageUrl.signup_background)),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 43,),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,color: Colors.white,)),
                SizedBox(height: 30,),
                Text('Verify_Code'.tr,style: AppStyle.Verify_Code,),
                SizedBox(height: 10,),
                Text('otp_message_2'.tr,style: AppStyle.otp_message_2,),
          
                SizedBox(height: 40,),
                 SizedBox(
                      child: Pinput(
                        controller: pincode,
                        length: 6,
                        defaultPinTheme: PinTheme(
                          margin: EdgeInsets.all(3),
                            textStyle: TextStyle(
                              color: Colors.white,
                                fontSize: 20, fontWeight: FontWeight.bold),
                            height: 50,
                            width: 50,
                              decoration: BoxDecoration(
                            border: Border.all(color: AppColor.hintColor),
                            borderRadius: BorderRadius.circular(10),
                          ),),
                          onChanged: (a){
                            Get.find<pinCodeController>().checkPin(pincode.length.obs);
                          },
                      ),
                    ),
                    SizedBox(height: 30,),
                    Center(child: Text('Code resend in 20 sec',style: AppStyle.labelTextStyle,)),
                    SizedBox(height: 100,),
          
                    Obx(() => 
                  Center(
                        child:    Get.find<pinCodeController>().verify == true ?
                        CustomButton(
                          height: 56,
                             width: 250,
                          child: Text('Verify',style: AppStyle.fillbuttonStyle,), 
                          ontap: (){
                        Get.to(NavigationScreen());
                          },
                          color: AppColor.primary,
                          ):
                      
                        CustomButton(
                          height: 56,
                             width: 250,
                          child: Text('Verify',style: AppStyle.buttonStyle,), 
                          ontap: (){
                                print(pincode.length);
                          },
                          color: AppColor.buttonBackColor,
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