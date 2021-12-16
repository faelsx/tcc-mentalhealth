import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menubar/menubar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: MenuBar(
        onTap: () => {print("clicou voltar")},
      ),
    );
  }
}
