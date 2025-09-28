import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/login/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> OnGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
        case SplashView.routeName:
        return MaterialPageRoute(builder: (context) => const SplashView(),);
        
        case OnBoardingView.routeName:
        return MaterialPageRoute(builder: (context) => const OnBoardingView(),);

        case LoginView.routeName:
        return MaterialPageRoute(builder: (context) => const LoginView(),);
    }
    return MaterialPageRoute(builder: (context) => const SplashView(),);
}