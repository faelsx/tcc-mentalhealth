import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

class MessageWidget extends StatelessWidget {
  final message;
  final color;
  final currentColor;
  final timestamp;
  final date;
  const MessageWidget({
    Key? key,
    required this.message,
    required this.color,
    required this.currentColor,
    required this.timestamp,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (currentColor.value == color) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            constraints: BoxConstraints(maxWidth: size.width * 0.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Color(color)),
            child: IntrinsicWidth(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3.5),
                    child: Text(
                      message,
                      style: AppTextStyles.message,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        date,
                        style: AppTextStyles.messagetime,
                      ),
                      Text(
                        timestamp,
                        style: AppTextStyles.messagetime,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            constraints: BoxConstraints(maxWidth: size.width * 0.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Color(color)),
            child: IntrinsicWidth(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 3.5),
                    child: Text(
                      message,
                      style: AppTextStyles.message,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        date,
                        style: AppTextStyles.messagetime,
                      ),
                      Text(
                        timestamp,
                        style: AppTextStyles.messagetime,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}
