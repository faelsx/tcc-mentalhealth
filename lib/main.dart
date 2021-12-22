import 'package:flutter/material.dart';
import 'package:mentalhealth_app/modules/info/tdah_page.dart';
import 'package:mentalhealth_app/modules/infomenu/infomenu_page.dart';
import 'package:mentalhealth_app/modules/menu/menu_page.dart';
import 'package:mentalhealth_app/modules/splash/splash_page.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC - nome',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: TDAHPage(),
    );
  }
}
