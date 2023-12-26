import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
   CustomButton(
      {super.key,
        required this.child,
        required this.ontap,
        this.color,
        this.height,
        this.width});
  final Widget child;
  final VoidCallback ontap;
  final double? width;
  final double? height;
  var color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: color)))),
          onPressed: ontap),
    );
  }
}