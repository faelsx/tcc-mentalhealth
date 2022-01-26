import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/data/info/demencias.dart';
import 'package:mentalhealth_app/shared/themes/widgets/info/topic.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class DemenciasPage extends StatelessWidget {
  const DemenciasPage({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  Text(
                    Demencias.title,
                    style: AppTextStyles.titleMenu,
                  ),
                  Text(
                    Demencias.subtitle,
                    style: AppTextStyles.subtitle,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Topic(
                        text: "Principais Sintomas",
                        width: 110,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Demencias.principaissintomas,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Topic(
                        text: "Causas",
                        width: 190,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Demencias.causas,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Topic(
                        text: "Diagnóstico",
                        width: 190,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Demencias.diagnostico,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
