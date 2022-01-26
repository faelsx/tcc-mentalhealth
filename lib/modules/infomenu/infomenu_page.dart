import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/widgets/infomenu/infomenu_button.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class InfomenuPage extends StatelessWidget {
  const InfomenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(children: [
          MenuBar(),
          Padding(
            padding: const EdgeInsets.only(top: 29, bottom: 47),
            child: Text(
              "Biblioteca",
              style: AppTextStyles.titleMenu,
            ),
          ),
          Expanded(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Transtornos neurocognitivos",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/transtornosneuro")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Transtorno de Ansiedade Generalizada",
                      onTap: () => {
                        Navigator.pushNamed(context, "/transtornoansiedade")
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Demências",
                      onTap: () => {Navigator.pushNamed(context, "/demencias")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Síndromes Depressivas",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/sindromesdepre")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Síndromes Maníacas",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/sindromesmani")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Síndromes relacionadas ao sono",
                      onTap: () => {Navigator.pushNamed(context, "/sono")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Esquizofrenia",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/esquizofrenia")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Síndromes Psicomotoras",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/sindromespsicomo")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Catatonia e lentificação psicomotora.",
                      onTap: () => {Navigator.pushNamed(context, "/catatonia")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Anorexia",
                      onTap: () => {Navigator.pushNamed(context, "/anorexia")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "Bulimia",
                      onTap: () => {Navigator.pushNamed(context, "/bulimia")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Transtornos consequêntes do uso de substâncias",
                      onTap: () =>
                          {Navigator.pushNamed(context, "/substancias")},
                    ),
                  ],
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
