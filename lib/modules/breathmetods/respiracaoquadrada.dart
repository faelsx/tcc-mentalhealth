import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

import 'package:mentalhealth_app/shared/themes/data/breath/respiracaoquadrada.dart';
import 'package:mentalhealth_app/shared/themes/widgets/breathmetods/info_container.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RespiracaoQuadradaPage extends StatefulWidget {
  const RespiracaoQuadradaPage({Key? key}) : super(key: key);

  @override
  _RespiracaoQuadradaPageState createState() => _RespiracaoQuadradaPageState();
}

class _RespiracaoQuadradaPageState extends State<RespiracaoQuadradaPage> {
  int activeIndex = 0;

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
                "Respiração Quadrada",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: RespQuad.tabs.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    final text = RespQuad.tabs[itemIndex];

                    return InfoContainer(text: text);
                  },
                  options: CarouselOptions(
                    height: size.height * 0.59375,
                    initialPage: 0,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: 3,
                    effect: SlideEffect(
                      activeDotColor: AppColors.primary,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.black,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
