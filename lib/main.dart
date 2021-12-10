import 'package:flutter/material.dart';
import 'package:mentalhealth_app/modules/splash/splash_page.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC - nome',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: SplashPage(),
    );
  }
}
