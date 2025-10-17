import 'package:clinic/core/Routing/routes.dart';
import 'package:clinic/core/helper/Extention.dart';
import 'package:clinic/core/themes/colors.dart';
import 'package:clinic/core/themes/styles.dart';
import 'package:flutter/material.dart';

class TextButtonOnBoarding extends StatelessWidget {
  const TextButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          context.pushNamed(Routers.login);
        },
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(AppColor.mainBlue),
           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 52)),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))
        ),
        child: Text("Get Started",
        style: Styles.font16WhiteMedium,));
    // return TextButton(
    //   onPressed: () {
    //     context.pushNamed(Routers.login);
    //   },
    //   style: ButtonStyle(
    //     backgroundColor: const WidgetStatePropertyAll((AppColor.mainBlue)),
    //      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //     minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 52)),
    //     shape: WidgetStatePropertyAll(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(16),
    //       ),
    //     ),
    //   ),
    //   child: Text(
    //     'Get Started',
    //     style: Styles.font16WhiteMedium,
    //   ),
    // );
  }
}
