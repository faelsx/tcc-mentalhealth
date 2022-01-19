import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final message;
  final color;
  final currentColor;
  const MessageWidget(
      {Key? key,
      required this.message,
      required this.color,
      required this.currentColor})
      : super(key: key);

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
            child: Text(message),
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
            child: Text(message),
          ),
        ],
      );
    }
  }
}
