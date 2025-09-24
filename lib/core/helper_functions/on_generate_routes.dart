import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> OnGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
        case SplashView.routeName:
        return MaterialPageRoute(builder: (context) => const SplashView(),);
    }
    return MaterialPageRoute(builder: (context) => const SplashView(),);
}