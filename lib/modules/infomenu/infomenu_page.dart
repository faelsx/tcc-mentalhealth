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
                      text: "TDAH",
                      onTap: () => {Navigator.pushNamed(context, "/tdah")},
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
                      text: "TDAH",
                      onTap: () => {print("clicou")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Depressão",
                      onTap: () => {print("clicou")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "TDAH",
                      onTap: () => {print("clicou")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Depressão",
                      onTap: () => {print("clicou")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "TDAH",
                      onTap: () => {print("clicou")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Depressão",
                      onTap: () => {print("clicou")},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, bottom: 40),
                child: Row(
                  children: [
                    InfomenuButton(
                      text: "TDAH",
                      onTap: () => {print("clicou")},
                    ),
                    Expanded(child: Container()),
                    InfomenuButton(
                      text: "Depressão",
                      onTap: () => {print("clicou")},
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
