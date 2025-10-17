import 'package:clinic/core/Routing/routes.dart';
import 'package:clinic/core/themes/colors.dart';
import 'package:clinic/core/themes/styles.dart';
import 'package:clinic/features/Login/widgets/TextFieled.dart';
import 'package:clinic/features/Login/widgets/socialMediaButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'button.dart';

class LoginScr extends StatefulWidget {

  LoginScr({ required this.isPassword, super.key});
   bool isPassword = false;

  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  // static const String routeName = '/loginscr';
  final formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController Password = TextEditingController();
  late bool isChecked = false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      key: formKey,
      backgroundColor: Colors.white70,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16 ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Back",
                      style: Styles.font32BlueBold,),
                   Gap(10.h),
                  Text("We're excited to have you back, can't wait to\n"
                      " see what you've been up to since you\n last logged in.",
                  style: Styles.font12GrayRegular,),
                  Gap(36.h),

                  //emailFailed
                  CustomText(
                    obscureText: false,
                    hintText: "Enter Your e-mail",
                    Control: email,
                    isPassword: widget.isPassword, validator: (value ) {
                    if(value!.isEmpty || value== null){
                      return("please write your e-mail");
                    }if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                    return 'please enter email like *****@gmail.com';
                    }

                  },),
                  Gap(17.h),
                  //passwordFilled
                  CustomText(
                      Control: Password,
                      hintText: "enter your Password Please",
                      validator: (value) {
                        if(value!.isEmpty || value == null){
                          return "please write your e-mail";
                        }if(value.length > 8){
                          return "please enter 8 numbers";
                        }
                      },
                      isPassword: true,
                      obscureText: true),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged:  (bool? newValue){
                              setState(() {
                                isChecked = newValue!;
                              });
                            },
                          checkColor: AppColor.lightBlue,
                        ),
                        Text("rember me!",
                        style: Styles.font12GrayRegular,
                        textAlign: TextAlign.end,),
                        Gap(70.w),
                        TextButton(
                            onPressed: (){},
                            child: Text("forget Password ?",
                            style: Styles.font12BlueRegular,)),

                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Login Succesfully 👍')));
                          Navigator.pushNamed(context, Routers.HomePage);

                        }
                      },
                      ),
                      Gap(45.h),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              thickness: 1,
                              height: 1,
                              color: Colors.black38,
                            ),
                          ),
                          Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("or SIGN IN WITH ",
                              style: Styles.font12GrayMedium,) ,
                          ),
                          const Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                              ))
                        ],
                      ),
                      Gap(32.h),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SocialMediaIcons(imageIcon: "assets/images/google.png"),
                          SocialMediaIcons(imageIcon: "assets/images/faceBook.png"),
                          SocialMediaIcons(imageIcon: "assets/images/apple.png"),
                        ],
                      ),
                      Gap(20.h),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                     Container(
                       alignment: Alignment.center,
                       child: RichText(
                           text: TextSpan(
                             text: 'By logging, you agree to our',
                             style: Styles.font12GrayMedium,

                             children: [
                               TextSpan(
                                 text: "Terms & Conditions ",
                                 style: Styles.font15DarkBlueMedium,

                               ),
                               TextSpan(
                                 text: 'and \n',
                                 style: Styles.font12GrayMedium,

                               ),
                               TextSpan(
                                 text: "PrivacyPolicy .",
                                 style: Styles.font15DarkBlueMedium,

                               ),

                             ]
                           ),

                       ),
                     ),
                           Gap(15.h),
                           RichText(
                               text: TextSpan(
                                 text: "Already have an account yet?  ",
                                 style: Styles.font15DarkBlueMedium,
                                 children: [
                                   TextSpan(
                                     text: "Sign Up",
                                     style: Styles.font24BlueBold.copyWith(fontSize: 19)
                                   )
                                 ]
                               ))
                    ],
                  ),




                ],
              ),
  ]
          )),
    ),
      )
    );
  }
}
