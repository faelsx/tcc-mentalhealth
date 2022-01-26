import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/data/breath/relaxamentoprogressivo.dart';
import 'package:mentalhealth_app/shared/themes/widgets/breathmetods/info_container.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RelaxamentoProgressivoPage extends StatefulWidget {
  const RelaxamentoProgressivoPage({Key? key}) : super(key: key);

  @override
  _RelaxamentoProgressivoPageState createState() =>
      _RelaxamentoProgressivoPageState();
}

class _RelaxamentoProgressivoPageState
    extends State<RelaxamentoProgressivoPage> {
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
                "Relaxamento Progressivo",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: RelaxProg.tabs.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    final text = RelaxProg.tabs[itemIndex];

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
                    count: 7,
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
