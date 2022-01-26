import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/widgets/breathhelper/breath_button.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class BreathhelperPage extends StatelessWidget {
  const BreathhelperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            MenuBar(),
            Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 47),
              child: Text(
                "Métodos de Respiração",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: BreathButton(
                text: "Respiração Diafragmática",
                onTap: () =>
                    {Navigator.pushNamed(context, "/respiracaodiafragmatica")},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: BreathButton(
                text: "Relaxamento Progressivo",
                onTap: () =>
                    {Navigator.pushNamed(context, "/relaxamentoprogressivo")},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: BreathButton(
                text: "Respiração Quadrada",
                onTap: () =>
                    {Navigator.pushNamed(context, "/respiracaoquadrada")},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: BreathButton(
                text: "Expiração Alongada",
                onTap: () =>
                    {Navigator.pushNamed(context, "/expiracaoalongada")},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
