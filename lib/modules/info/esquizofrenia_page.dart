import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/data/info/esquizofrenia.dart';
import 'package:mentalhealth_app/shared/themes/widgets/info/topic.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class EsquizofreniaPage extends StatelessWidget {
  const EsquizofreniaPage({Key? key}) : super(key: key);

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
                    Esquizofrenia.title,
                    style: AppTextStyles.titleMenu,
                  ),
                  Text(
                    Esquizofrenia.subtitle,
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
                        text: "Conceito",
                        width: 110,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Esquizofrenia.conceito,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Topic(
                        text: "Sintomas Negativos",
                        width: 190,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Esquizofrenia.sintomasnegativos,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Topic(
                        text: "Sintomas Negativos",
                        width: 190,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 50),
                    child: Text(
                      Esquizofrenia.sintomaspositivos,
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
