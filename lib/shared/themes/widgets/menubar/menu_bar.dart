import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_images.dart';

class MenuBar extends StatelessWidget {
  final VoidCallback onTap;
  const MenuBar({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                child: Image.asset(AppImages.back_button),
              ),
            ),
            Container(
              child: Image.asset(AppImages.mini_logo),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.22),
            ),
            InkWell(
              onTap: () => {print("clicou home")},
              child: Container(
                child: Image.asset(AppImages.home_button),
              ),
            )
          ],
        ),
      ),
    );
  }
}
