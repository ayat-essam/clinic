import 'package:clinic/core/Routing/routes.dart';
import 'package:clinic/features/Home/HomePage.dart';
import 'package:clinic/features/Home/details/Details%20Screen.dart';
import 'package:clinic/features/Login/loginScr.dart';
import 'package:clinic/features/onBoarding/onBording.dart';
import 'package:flutter/material.dart';

class AppRouter {
   Route? generateRoute(RouteSettings settings) {
     final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoarding:
        return MaterialPageRoute(builder: (_) => const onBoarding());
      // case Routers.LoginScr:
      //   return MaterialPageRoute(builder: (_) =>  LoginScr(isPassword: false));
      case Routers.HomePage:
        return MaterialPageRoute(builder: (_) => const Homepage());
      case Routers.detailsScreen:
          return MaterialPageRoute(
            builder: (_) => const DetailsScreen() ,
          );
          default:
            return MaterialPageRoute(
                builder: (_) => Scaffold(
                  appBar: AppBar(),
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ),
            );

    }
  }
}