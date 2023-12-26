import 'package:flutter/material.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget(
      {required this.labelText,
        this.icon,
        this.onClick,
        this.controller,
        this.hintText,
        this.validator,
        this.onChanged,
        this.keybordtype});

  String labelText;
  String? hintText;
  Icon? icon;
  var validator;
  var keybordtype;
  // var bgColor;
  var onChanged;
  TextEditingController? controller;
  VoidCallback? onClick;
  // void Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 1,
      child: Theme(
        data: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Color.fromRGBO(233, 236, 239, 0.5),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.TextFieldfocusColor),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0,top: 8),
                child: Text('${labelText}',
                style: AppStyle.labelTextStyle,),
              ),
              Container(
                height: 40,
                child: TextFormField(
                  onChanged: onChanged,
                  validator: validator,
                  style: AppStyle.labelTextStyle,
                  onTap: onClick,
                  controller: controller,
                  keyboardType: keybordtype,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: AppStyle.hintStyle,
                    suffixIcon: icon,
                    focusColor: AppColor.TextFieldfocusColor,
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}