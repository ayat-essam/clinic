import 'package:clinic/core/DI/depance_injection.dart';
import 'package:clinic/core/Routing/routes.dart';
import 'package:clinic/features/Home/HomePage.dart';
import 'package:clinic/features/Home/details/Details%20Screen.dart';
import 'package:clinic/features/onBoarding/onBording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/Login/Data/repo/cubit/login_cubit.dart';
import '../../features/Login/Ui/loginScr.dart';

class AppRouter {
   Route? generateRoute(RouteSettings settings) {
     // final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoarding:
        return MaterialPageRoute(builder: (_) => const onBoarding());


      case Routers.LoginScr:
        return MaterialPageRoute(builder: (_) =>  BlocProvider(
            create: ( context) => getIt<LoginCubit>(),
        child: const LoginScr(isPassword: false,)));


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