import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

import '../../app_images.dart';

class Topic extends StatelessWidget {
  final text;
  final width;
  const Topic({Key? key, required this.text, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.0531,
      width: width.toDouble(),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.primary),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(AppImages.topic),
          ),
          Text(
            text,
            style: AppTextStyles.topic,
          )
        ],
      ),
    );
  }
}
