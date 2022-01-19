import 'package:flutter/material.dart';
import 'package:mentalhealth_app/modules/breathhelper/breathhelper_page.dart';
import 'package:mentalhealth_app/modules/breathmetods/expiracaoalongada.dart';
import 'package:mentalhealth_app/modules/contacts/contacts_page.dart';
import 'package:mentalhealth_app/modules/info/tdah_page.dart';
import 'package:mentalhealth_app/modules/info/transtornosdosono_page.dart';
import 'package:mentalhealth_app/modules/lobby/lobby_page.dart';
import 'package:mentalhealth_app/modules/splash/splash_page.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';

import 'modules/infomenu/infomenu_page.dart';
import 'modules/home/home_page.dart';
import 'modules/lobbyrules/lobbyrules_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC - nome',
      theme: ThemeData(primaryColor: AppColors.primary),
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/infomenu": (context) => InfomenuPage(),
        "/contacts": (context) => ContactsPage(),
        "/breathhelper": (context) => BreathhelperPage(),
        "/tdah": (context) => TDAHPage(),
        "/expiracaoalongada": (context) => ExpiracaoAlongadaPage(),
        "/lobbyrules": (context) => LobbyRulesPage(),
        "/lobby": (context) => LobbyPage(),
        "/sono": (context) => SonoPage(),
      },
      initialRoute: "/splash",
    );
  }
}
