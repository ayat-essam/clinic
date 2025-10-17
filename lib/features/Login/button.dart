import 'package:clinic/core/Routing/routes.dart';
import 'package:clinic/core/themes/colors.dart';
import 'package:clinic/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onPressed  ;
   CustomButton({ this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            elevation: const WidgetStatePropertyAll(0),
            backgroundColor: const WidgetStatePropertyAll(AppColor.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const WidgetStatePropertyAll(Size(double.infinity , 52))
          ),
          child: Text("Login",
          style: Styles.font16WhiteSemiBold,)),
    );
  }
}
