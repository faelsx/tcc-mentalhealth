import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatefulWidget {
  final title;
  final number;
  final subscription;
  final heigth;
  const ContactWidget({
    Key? key,
    required this.title,
    required this.number,
    required this.subscription,
    required this.heigth,
  }) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      width: size.width * 0.833,
      height: pressed ? size.height * widget.heigth : size.height * 0.1718,
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(10)),
      child: pressed
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 17, right: 17),
                  child: Row(
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyles.buttonMenu,
                      ),
                      Expanded(child: Container()),
                      InkWell(
                        onTap: () => {launch("tel:${widget.number}")},
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.secundary,
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                          child: Row(
                            children: [
                              Icon(Icons.call),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Text(
                                  widget.number,
                                  style: AppTextStyles.buttonMenu,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      widget.subscription,
                      style: AppTextStyles.bodytext,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => {
                      setState(() {
                        pressed = !pressed;
                      })
                    },
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.7472,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.secundary,
                      ),
                      child: Center(
                        child: Text(
                          "Ocultar",
                          style: AppTextStyles.bodytext,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 17, right: 17),
                  child: Row(
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyles.buttonMenu,
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.perm_contact_cal),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          widget.number,
                          style: AppTextStyles.buttonMenu,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => {
                      setState(() {
                        pressed = !pressed;
                      })
                    },
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.7472,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.secundary,
                      ),
                      child: Center(
                        child: Text(
                          "Mais informações",
                          style: AppTextStyles.bodytext,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
