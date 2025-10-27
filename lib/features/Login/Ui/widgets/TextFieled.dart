import 'package:clinic/core/themes/colors.dart';
import 'package:clinic/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? Function(String?)? validator;
 bool isPassword;
 final TextEditingController Control;
 String? hintText;
   CustomText({
     required this.Control,
     this.hintText,
     required this.validator,
     required this.isPassword, super.key, required bool obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ,
      controller: Control,
      keyboardType: TextInputType.emailAddress,
      obscureText: isPassword ?? false ,
      autofocus: true,

      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.moreLighterGray,
        hintText: hintText ?? "",
        hintStyle: Styles.font12GrayRegular,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
      ),
    );
  }
}
