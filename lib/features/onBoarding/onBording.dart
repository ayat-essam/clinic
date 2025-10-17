import 'package:clinic/core/themes/styles.dart';
import 'package:clinic/features/onBoarding/widgets/Doc%20Logo%20And%20Name.dart';
import 'package:clinic/features/onBoarding/widgets/doctor%20image%20And%20%20bottomText.dart';
import 'package:clinic/features/onBoarding/widgets/text%20botton%20on%20boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                Gap(20.h),
                const DoctorImage(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Manage and schedule all of your"
                          " medical appointments easily\n with Docdoc to get a new experience.",
                        style: Styles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      const Gap(30),
                      TextButtonOnBoarding()

                      

                    ],
                  ),
                )

              ],
            ),
          ),

        ));
  }
}
