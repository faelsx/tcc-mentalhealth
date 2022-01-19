import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/data/rules/lobbyrules.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class LobbyRulesPage extends StatelessWidget {
  const LobbyRulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            MenuBar(),
            Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 47),
              child: Text(
                "Regras do chat",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60, bottom: 20),
              child: Text(
                LobbyRules.rules,
                style: AppTextStyles.bodytext,
                textAlign: TextAlign.justify,
              ),
            ),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, "/lobby")},
              child: Container(
                height: size.height * 0.055,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.secundary,
                ),
                child: Center(
                  child: Text(
                    "Concordo e desejo continuar",
                    style: AppTextStyles.bodytext,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
