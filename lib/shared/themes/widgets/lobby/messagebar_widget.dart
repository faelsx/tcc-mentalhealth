import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';

class MessageBarWidget extends StatefulWidget {
  final color;
  const MessageBarWidget({Key? key, required this.color}) : super(key: key);

  @override
  _MessageBarWidgetState createState() => _MessageBarWidgetState();
}

class _MessageBarWidgetState extends State<MessageBarWidget> {
  final _controller = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection("messages");
  String message = '';

  void sendMessage(color, messagetxt) async {
    FocusScope.of(context).unfocus();

    if (message != '') {
      users.add({
        'colorUser': color.value,
        'message': messagetxt,
        'sendAt': DateTime.now(),
      });
    }
    _controller.clear();
    message = '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            textCapitalization: TextCapitalization.sentences,
            autocorrect: true,
            enableSuggestions: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusColor: AppColors.primary,
              filled: true,
              fillColor: AppColors.secundary,
              labelText: "Digite sua mensagem",
              labelStyle: AppTextStyles.typeChat,
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                color: AppColors.body,
                onPressed: () => sendMessage(widget.color, message),
              ),
            ),
            onChanged: (value) => setState(() {
              message = value;
            }),
            onSubmitted: (value) => sendMessage(widget.color, message),
          ),
        ),
      ],
    );
  }
}
