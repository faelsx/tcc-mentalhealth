import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

class InfomenuButton extends StatelessWidget {
  final text;
  final VoidCallback onTap;
  const InfomenuButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * 0.361,
        height: size.height * 0.125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primary,
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.buttonMenu,
          ),
        ),
      ),
    );
  }
}
