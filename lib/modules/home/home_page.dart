import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_images.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                "Menu Principal",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: MenuButton(
                  text: "Biblioteca de informações",
                  icon: AppImages.book,
                  onTap: () => {Navigator.pushNamed(context, "/infomenu")}),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: MenuButton(
                  text: "Contatos de apoio",
                  icon: AppImages.user,
                  onTap: () => {Navigator.pushNamed(context, "/contacts")}),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: MenuButton(
                  text: "Lobby de apoio",
                  icon: AppImages.chat,
                  onTap: () => {print("cliqueibotao")}),
            ),
            MenuButton(
                text: "Métodos de Respiração",
                icon: AppImages.breath,
                onTap: () => {Navigator.pushNamed(context, "/breathhelper")}),
          ],
        ),
      ),
    );
  }
}
