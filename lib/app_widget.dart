import 'package:flutter/material.dart';
import 'package:mentalhealth_app/modules/breathhelper/breathhelper_page.dart';
import 'package:mentalhealth_app/modules/breathmetods/expiracaoalongada.dart';
import 'package:mentalhealth_app/modules/contacts/contacts_page.dart';
import 'package:mentalhealth_app/modules/info/demencias_page.dart';
import 'package:mentalhealth_app/modules/info/transtornosneuro_page.dart';
import 'package:mentalhealth_app/modules/info/transtornosdosono_page.dart';
import 'package:mentalhealth_app/modules/lobby/lobby_page.dart';
import 'package:mentalhealth_app/modules/splash/splash_page.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'modules/breathmetods/relaxamentoprogressivo.dart';
import 'modules/breathmetods/respiracaodiafragmatica.dart';
import 'modules/breathmetods/respiracaoquadrada.dart';
import 'modules/info/anorexia_page.dart';
import 'modules/info/bulimia_page.dart';
import 'modules/info/catatonia_page.dart';
import 'modules/info/esquizofrenia_page.dart';
import 'modules/info/sindromesdepre_page.dart';
import 'modules/info/sindromesmani_page.dart';
import 'modules/info/sindromespsicomo_page.dart';
import 'modules/info/substancias_page.dart';
import 'modules/info/transtornoansiedade_page.dart';
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
        "/transtornosneuro": (context) => TranstornosNeuroPage(),
        "/expiracaoalongada": (context) => ExpiracaoAlongadaPage(),
        "/lobbyrules": (context) => LobbyRulesPage(),
        "/lobby": (context) => LobbyPage(),
        "/sono": (context) => SonoPage(),
        "/respiracaoquadrada": (context) => RespiracaoQuadradaPage(),
        "/respiracaodiafragmatica": (context) => RespiracaoDiafragmaticaPage(),
        "/relaxamentoprogressivo": (context) => RelaxamentoProgressivoPage(),
        "/demencias": (context) => DemenciasPage(),
        "/sindromesdepre": (context) => SindromesDeprePage(),
        "/sindromesmani": (context) => SindromesManiPage(),
        "/transtornoansiedade": (context) => TranstornoAnsiedadePage(),
        "/esquizofrenia": (context) => EsquizofreniaPage(),
        "/sindromespsicomo": (context) => SindromesPsicomoPage(),
        "/catatonia": (context) => CatatoniaPage(),
        "/anorexia": (context) => AnorexiaPage(),
        "/bulimia": (context) => BulimiaPage(),
        "/substancias": (context) => SubstanciasPage(),
      },
      initialRoute: "/splash",
    );
  }
}
