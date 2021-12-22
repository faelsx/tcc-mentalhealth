import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_images.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.asset(
                    AppImages.logo,
                    height: 180,
                    width: 180,
                  ),
                ),
                Text(
                  "Seja bem vindo",
                  style: AppTextStyles.titleHome,
                ),
                Text("Se informe. Se cuide.",
                    style: AppTextStyles.subtitleHome),
                Text("Você não está sozinho.",
                    style: AppTextStyles.subtitleHome)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
