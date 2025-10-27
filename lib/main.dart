import 'package:clinic/core/DI/depance_injection.dart';
import 'package:clinic/features/onBoarding/onBording.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/Routing/app router.dart';
import 'core/themes/colors.dart';

void main() {
  setAndGit();
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        child: MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: AppColor.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          home: onBoarding(),
        )
    );
  }
}


