import 'package:clinic/core/themes/colors.dart';
import 'package:clinic/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/image SVG/Frame.svg'),
        Gap(10.w),
        Text("The Clinic",
        style: Styles.font24BlueBold
     ,)
      ],

    );
  }
}
